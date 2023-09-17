
import unittest
from django.test import TestCase
from django.contrib.auth import get_user_model

User = get_user_model()

class UserTestCase(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(
            username='testuser',
            password='testpass123'
        )

    def test_user_creation(self):
        self.assertEqual(User.objects.count(), 1)

    def test_user_username(self):
        self.assertEqual(self.user.username, 'testuser')

    def test_user_password(self):
        self.assertTrue(self.user.check_password('testpass123'))

if __name__ == '__main__':
    unittest.main()
