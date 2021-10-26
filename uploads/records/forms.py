from django import forms
from django.forms import ModelForm
from .models import UserAuth,CriminalRecord,Testimg,FIRform
class CriminalForm(ModelForm):
    class Meta:
        model=CriminalRecord
        fields=['c_photo','c_name','c_aliases','c_height','c_weight','c_hair_color','c_eye_color','c_scars','c_arrested_by','c_arrestdate','c_nationality','c_city']
class TestimgForm(ModelForm):
    class Meta:
        model=Testimg
        fields=['t_img']
class FIR(ModelForm):
    class Meta:
        model=FIRform
        fields=['Accused_name','Complaint_name','city','complain','Officer_Name','contact_no','precint_no']