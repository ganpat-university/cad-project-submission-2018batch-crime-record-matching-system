# Generated by Django 3.2.7 on 2021-10-21 04:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('records', '0002_testimg'),
    ]

    operations = [
        migrations.CreateModel(
            name='FIRform',
            fields=[
                ('FIR_no', models.AutoField(primary_key=True, serialize=False)),
                ('Accused_name', models.CharField(max_length=50)),
                ('Complaint_name', models.CharField(max_length=50)),
                ('city', models.CharField(max_length=50)),
                ('complain', models.CharField(max_length=50)),
                ('contact_no', models.CharField(max_length=50)),
                ('precint_no', models.CharField(max_length=50)),
            ],
        ),
    ]
