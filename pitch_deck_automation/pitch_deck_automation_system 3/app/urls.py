from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('pitch_deck/<int:pk>/', views.pitch_deck_detail, name='pitch_deck_detail'),
]