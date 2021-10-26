from django.db import models
from datetime import datetime

# Create your models here.
class UserAuth(models.Model):
    Username = models.CharField(primary_key=True,max_length=50)
    password = models.CharField(max_length=50)
    Userimage=models.ImageField(upload_to='uploads/', height_field=None, width_field=None, max_length=None)
    Useremail=models.EmailField(max_length=254)
class CriminalRecord(models.Model):
    haircolor=[('black','black'),('grey','grey'),('white','white'),('bald','bald')]
    eyecolor=[('black','black'),('blue','blue'),('red','red'),]
    c_id=models.AutoField(primary_key=True)
    c_photo=models.ImageField(upload_to='uploadcriminal/')
    c_name=models.CharField(max_length=50)
    c_aliases=models.CharField(max_length=50)
    c_height=models.IntegerField()
    c_weight=models.IntegerField()
    c_hair_color=models.CharField(max_length=50,choices=haircolor)
    c_eye_color=models.CharField(max_length=50,choices=eyecolor)
    c_scars=models.CharField(max_length=50)
    c_arrestdate=models.DateField()
    c_arrested_by=models.ForeignKey("UserAuth",on_delete=models.CASCADE)
    c_nationality=models.CharField(max_length=50)
    c_city=models.CharField(max_length=50)
class Crimereport(models.Model):
    r_id=models.AutoField(primary_key=True)
    r_date=models.DateField()
    r_time=models.TimeField()
    r_officer=models.ForeignKey("UserAuth",on_delete=models.CASCADE)
    r_summary=models.IntegerField()
class Testimg(models.Model):
    t_id=models.AutoField(primary_key=True)
    t_img=models.ImageField(upload_to='testimg/')
class FIRform(models.Model):
    FIR_no=models.AutoField(primary_key=True)
    Accused_name=models.CharField(max_length=50)
    Complaint_name=models.CharField(max_length=50)
    Officer_Name=models.ForeignKey("UserAuth",on_delete=models.CASCADE,default=None)
    city=models.CharField(max_length=50)
    complain=models.CharField(max_length=50)
    contact_no=models.CharField(max_length=50)
    precint_no=models.CharField(max_length=50)
