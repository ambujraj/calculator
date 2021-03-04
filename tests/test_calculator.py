from unittest import TestCase
from unittest.mock import patch
from src.calculator import Calculator

class TestCalculator(TestCase):
    def setUp(self):
        self.calc = Calculator()

    def test_sum(self):
        calculator = Calculator()
        actual = calculator.add(2, 4)
        self.assertEqual(6, actual)
    
    def test_diff(self):
        calculator = Calculator()
        actual = calculator.subtract(4, 2)
        self.assertEqual(2, actual)
        
    def test_mul(self):
        calculator = Calculator()
        actual = calculator.multiply(2, 4) 
        self.assertEqual(8, actual)

    def test_div(self):
        calculator = Calculator()
        actual = calculator.divide(4, 2)
        self.assertEqual(2, actual)