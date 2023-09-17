
from django.db import models
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    """
    User model - Add any additional fields you need
    """
    is_editor = models.BooleanField(default=False)
    is_viewer = models.BooleanField(default=False)

class Profile(models.Model):
    """
    Profile model - related to User model
    """
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    bio = models.TextField(max_length=500, blank=True)
    location = models.CharField(max_length=30, blank=True)
    birth_date = models.DateField(null=True, blank=True)

    def __str__(self):
        return self.user.username
