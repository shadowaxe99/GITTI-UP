
from django.db import models
from django.contrib.auth.models import User

class Deck(models.Model):
    title = models.CharField(max_length=200)
    description = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    owner = models.ForeignKey(User, related_name='decks', on_delete=models.CASCADE)

class Slide(models.Model):
    title = models.CharField(max_length=200)
    content = models.TextField()
    deck = models.ForeignKey(Deck, related_name='slides', on_delete=models.CASCADE)

class Comment(models.Model):
    user = models.ForeignKey(User, related_name='comments', on_delete=models.CASCADE)
    slide = models.ForeignKey(Slide, related_name='comments', on_delete=models.CASCADE)
    text = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

class Revision(models.Model):
    user = models.ForeignKey(User, related_name='revisions', on_delete=models.CASCADE)
    slide = models.ForeignKey(Slide, related_name='revisions', on_delete=models.CASCADE)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
