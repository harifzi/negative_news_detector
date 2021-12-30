from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('new', views.new, name='new'),
    path('edit/<int:id>', views.update, name='update'),
    path('delete/<int:id>', views.destroy, name='destroy'),
]
