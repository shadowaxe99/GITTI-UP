import unittest
from django.test import TestCase
from app.models import Deck

class DeckTestCase(TestCase):
    def setUp(self):
        Deck.objects.create(title="Test Deck 1", description="This is a test deck.")
        Deck.objects.create(title="Test Deck 2", description="This is another test deck.")

    def test_deck_creation(self):
        deck1 = Deck.objects.get(title="Test Deck 1")
        deck2 = Deck.objects.get(title="Test Deck 2")
        self.assertEqual(deck1.description, "This is a test deck.")
        self.assertEqual(deck2.description, "This is another test deck.")

    def test_deck_update(self):
        deck = Deck.objects.get(title="Test Deck 1")
        deck.description = "Updated description"
        deck.save()
        updated_deck = Deck.objects.get(title="Test Deck 1")
        self.assertEqual(updated_deck.description, "Updated description")

    def test_deck_deletion(self):
        deck = Deck.objects.get(title="Test Deck 2")
        deck.delete()
        with self.assertRaises(Deck.DoesNotExist):
            Deck.objects.get(title="Test Deck 2")

if __name__ == '__main__':
    unittest.main()