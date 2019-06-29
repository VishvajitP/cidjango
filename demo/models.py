from django.contrib.auth.models import User
from django.db import models

# Create your models here.
class Mydemo(User):
    address = models.CharField(max_length=128)
