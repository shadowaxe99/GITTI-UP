def create_deck(request):
    if request.method == 'POST':
        form = DeckForm(request.POST)
        if form.is_valid():
            deck = form.save(commit=False)
            deck.author = request.user
            deck.save()
            return redirect('view_deck', deck_id=deck.id)
    else:
        form = DeckForm()
    return render(request, 'app/create_deck.html', {'form': form})

def edit_deck(request, deck_id):
    deck = get_object_or_404(Deck, id=deck_id)
    if request.method == 'POST':
        form = DeckForm(request.POST, instance=deck)
        if form.is_valid():
            form.save()
            return redirect('view_deck', deck_id=deck.id)
    else:
        form = DeckForm(instance=deck)
    return render(request, 'app/edit_deck.html', {'form': form, 'deck': deck})

def view_deck(request, deck_id):
    deck = get_object_or_404(Deck, id=deck_id)
    return render(request, 'app/view_deck.html', {'deck': deck})