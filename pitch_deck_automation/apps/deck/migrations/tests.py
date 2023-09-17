
import unittest
from django.test import TestCase
from django.urls import reverse
from .models import Deck

class DeckModelTest(TestCase):
    def setUp(self):
        Deck.objects.create(title='Test Deck', description='Test Description')

    def test_title_content(self):
        deck = Deck.objects.get(id=1)
        expected_object_name = f'{deck.title}'
        self.assertEqual(expected_object_name, 'Test Deck')

    def test_description_content(self):
        deck = Deck.objects.get(id=1)
        expected_object_description = f'{deck.description}'
        self.assertEqual(expected_object_description, 'Test Description')

class HomePageViewTest(TestCase):
    def setUp(self):
        Deck.objects.create(title='Test Deck', description='Test Description')

    def test_view_url_exists_at_proper_location(self):
        resp = self.client.get('/')
        self.assertEqual(resp.status_code, 200)

    def test_view_url_by_name(self):
        resp = self.client.get(reverse('home'))
        self.assertEqual(resp.status_code, 200)

    def test_view_uses_correct_template(self):
        resp = self.client.get(reverse('home'))
        self.assertEqual(resp.status_code, 200)
        self.assertTemplateUsed(resp, 'home.html')

if __name__ == '__main__':
    unittest.main()
