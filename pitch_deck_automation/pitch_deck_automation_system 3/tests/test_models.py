import unittest
from app.models import PitchDeck

class PitchDeckModelTestCase(unittest.TestCase):
    def test_pitch_deck_creation(self):
        pitch_deck = PitchDeck.objects.create(title="Investor Pitch Deck", description="Sample pitch deck for investors")
        self.assertEqual(pitch_deck.title, "Investor Pitch Deck")
        self.assertEqual(pitch_deck.description, "Sample pitch deck for investors")
        self.assertIsNotNone(pitch_deck.created_at)
        self.assertIsNotNone(pitch_deck.updated_at)