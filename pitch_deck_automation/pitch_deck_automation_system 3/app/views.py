
from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return HttpResponse("Welcome to the Pitch Deck Automation System!")

def pitch_deck(request, deck_id):
    # Logic to retrieve and render the pitch deck based on deck_id
    return render(request, 'pitch_deck.html', {'deck_id': deck_id})

