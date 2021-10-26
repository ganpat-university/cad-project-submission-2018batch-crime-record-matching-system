from django.contrib import admin
from .models import UserAuth,CriminalRecord,Crimereport
admin.site.register(UserAuth)
admin.site.register(CriminalRecord)
admin.site.register(Crimereport)
# Register your models here.
