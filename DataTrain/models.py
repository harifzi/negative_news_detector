from django.db import models

class DataTrain(models.Model):
    isi_data_train = models.TextField()
    label = models.BooleanField()
    referensi_data_train = models.TextField()
    def __str__(self):
        return self.name
