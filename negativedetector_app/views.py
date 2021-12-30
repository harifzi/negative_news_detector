from django.shortcuts import render, redirect
from django.http import HttpResponse
# from DataTrain.models import DataTrain

import pandas as pd
import numpy as np
import itertools
from sklearn.feature_extraction.text import CountVectorizer, TfidfVectorizer, HashingVectorizer
from sklearn.model_selection import train_test_split
from sklearn.linear_model import PassiveAggressiveClassifier
from sklearn.naive_bayes import MultinomialNB
from sklearn import metrics
from sklearn.feature_extraction import text
from sqlalchemy import create_engine
import pymysql
import pandas as pd
import matplotlib.pyplot as plt

# Konfigurasi db
db_connection = 'mysql+pymysql://root:@localhost/negativedetector_app'
conn = create_engine(db_connection)

# Membaca data dari database
df = pd.read_sql("SELECT `id`,`isi_data_train`,`label` FROM `datatrain_datatrain`", conn) # untuk membaca db
# ADDING STOP WORDS
# referensi: OnnoCenterWiki
# source: https://github.com/masdevid/ID-Stopwords/blob/master/id.stopwords.02.01.2016.txt
# Mendefinisi variabel stopword bahasa indonesia kemudian menggabungkan dengan stopwords English
with open("stopwords_id.txt", "r") as f:
    stopwords = f.read().splitlines()
f.close()
stop_words = text.ENGLISH_STOP_WORDS.union(stopwords)

# EXTRACTING DATA
y = df.label
df = df.drop('label', axis=1)
X_train, X_test, y_train, y_test = train_test_split(df['isi_data_train'], y, test_size=0.33, random_state=53) #dilakukan pembagian test dan train

# BUILD VECTORIZER CLASSIFIER
count_vectorizer = CountVectorizer(stop_words='english') # Menghapus stopwords
count_train = count_vectorizer.fit_transform(X_train)
count_test = count_vectorizer.transform(X_test)

tfidf_vectorizer = TfidfVectorizer(stop_words='english', max_df=0.7) # Menghapus stopwords, dan kata-kata yang muncul 70% semua artikel / max df 0.7
tfidf_train = tfidf_vectorizer.fit_transform(X_train)
tfidf_test = tfidf_vectorizer.transform(X_test)

clf = MultinomialNB(alpha=0.4)
clf.fit(count_train, y_train)
pred = clf.predict(count_test)
score = metrics.accuracy_score(y_test, pred)

def index(request):
    akurasi = "%0.3f" % score
    if 'predict_input' in request.GET:
        result_predict = clf.predict(count_vectorizer.transform({request.GET['predict_input']}))
        probabilitas = clf.predict_proba(count_vectorizer.transform({request.GET['predict_input']}))
        return render(request, 'home.html', {'akurasi':akurasi,'result':result_predict,'get':request.GET['predict_input'],'proba':probabilitas})
    else:
        return render(request, 'home.html', {'akurasi':akurasi})

def predict(request, text):
    return HttpResponse(clf.predict(count_vectorizer.transform({text})))
