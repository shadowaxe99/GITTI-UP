# views.py

from django.shortcuts import render
from .models import Deck, Slide
from django.contrib.auth.decorators import login_required

@login_required
def deck_list(request):
    decks = Deck.objects.filter(created_by=request.user)
    return render(request, 'deck/deck_list.html', {'decks': decks})

@login_required
def deck_detail(request, pk):
    deck = get_object_or_404(Deck, pk=pk)
    return render(request, 'deck/deck_detail.html', {'deck': deck})

@login_required
def deck_new(request):
    if request.method == "POST":
        form = DeckForm(request.POST)
        if form.is_valid():
            deck = form.save(commit=False)
            deck.created_by = request.user
            deck.save()
            return redirect('deck_detail', pk=deck.pk)
    else:
        form = DeckForm()
    return render(request, 'deck/deck_edit.html', {'form': form})

@login_required
def deck_edit(request, pk):
    deck = get_object_or_404(Deck, pk=pk)
    if request.method == "POST":
        form = DeckForm(request.POST, instance=deck)
        if form.is_valid():
            deck = form.save()
            return redirect('deck_detail', pk=deck.pk)
    else:
        form = DeckForm(instance=deck)
    return render(request, 'deck/deck_edit.html', {'form': form})