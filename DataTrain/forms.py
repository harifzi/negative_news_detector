from django import forms
from .models import DataTrain
#DataFlair
class NewData(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(NewData, self).__init__(*args, **kwargs)
        self.fields['isi_data_train'].widget.attrs = {
            'class': 'form-control'
        }
        self.fields['referensi_data_train'].widget.attrs = {
            'class': 'form-control'
        }

    class Meta:
        model = DataTrain
        labels = {
            "label": "Lakukan centang apabila True"
        }
        fields = '__all__'
