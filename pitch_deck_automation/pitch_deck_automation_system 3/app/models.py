class PitchDeck(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    file = models.FileField(upload_to='pitch_decks/')
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title