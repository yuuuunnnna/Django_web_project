from django.db import models

# Create your models here.

class Member(models.Model):
    user_id = models.CharField(max_length=50, unique=True)
    user_pw = models.CharField(max_length=50)
    user_name = models.CharField(max_length=50)
    user_sch = models.CharField(max_length=50, default='동의대학교')
    date_joined = models.DateTimeField()

