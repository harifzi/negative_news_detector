from django.shortcuts import render, redirect
from .models import DataTrain
from .forms import NewData
from django.http import HttpResponse

# Halaman Daftar Data Train
def index(request):
    record = DataTrain.objects.all()
    return render(request, 'list.html', {'record': record})

#Tambah Data Train
def new(request):
    new = NewData()
    if request.method == 'POST':
        new = NewData(request.POST)
        if new.is_valid():
            new.save()
            return redirect('index')
        else:
            # Add Display Error
            return redirect('index')
    else:
        return render(request, 'form.html', {'fetching_form':new})

#Update Data Train
def update(request, id):
    id = int(id)
    try:
        data_train = DataTrain.objects.get(id = id)
    except DataTrain.DoesNotExist:
        return redirect('index')
    update = NewData(request.POST or None, instance = data_train)
    if update.is_valid():
       update.save()
       return redirect('index')
    return render(request, 'form.html', {'fetching_form':update})

#Delete Data Train
def destroy(request, id):
    id = int(id)
    try:
        data_train = DataTrain.objects.get(id = id)
    except DataTrain.DoesNotExist:
        return redirect('index')
    data_train.delete()
    return redirect('index')
