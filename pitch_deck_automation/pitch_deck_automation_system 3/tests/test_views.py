import unittest
from django.test import Client

class ViewsTestCase(unittest.TestCase):
    def setUp(self):
        self.client = Client()

    def test_index_view(self):
        response = self.client.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'index.html')

    def test_pitch_deck_view(self):
        response = self.client.get('/pitch_deck/')
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'pitch_deck.html')

if __name__ == '__main__':
    unittest.main()