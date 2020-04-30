from unittest import TestCase
from backend.cleaner import Cleaner


class TestCleaner(TestCase):
    def setUp(self) -> None:
        self.file = 'backend/data/time_series_covid19_confirmed_global.csv'
        self.country = 'Mexico'
        self.cleaner = Cleaner(self.file, self.country)

    def test_columns(self):
        valid_columns = ['ds', 'y']
        self.df = self.cleaner.keep_date_only()
        df_columns = list(self.df.columns)
        self.assertEqual(valid_columns, df_columns)
