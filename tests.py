import unittest
import pandas as pd
import numpy
from main import open_file, create_tables


class MyFirstTests(unittest.TestCase):
    test_columns = ['H', 'Customer_Name', 'Customer_Id', 'Open_Date', 'Last_Consulted_Date', 'Vaccination_Id',
                    'Dr_Name', 'State', 'Country', 'DOB', 'Is_Active']
    num_of_rows = 0

    def setUp(self):
        df = open_file()
        if not (df.empty):
            df.pop(df.columns.values[0])
        self.fixture = df
        self.num_of_rows = len(self.fixture.index)

    def test_file_existence(self):
        df = pd.DataFrame()
        self.assertNotEqual(self.fixture.empty, df.empty)

    def test_file_columns(self):
        self.assertEqual(self.test_columns, list(self.fixture.columns))

    def test_col_name(self):
        is_valid = False
        for i in range(0, self.num_of_rows, 1):
            record = self.fixture.iloc[i]['Customer_Name']
            is_valid = len(record) <= 255 and record != ''
            if not (is_valid):
                break
        self.assertEqual(True, is_valid)

    def test_col_id(self):
        is_valid = False
        for i in range(0, self.num_of_rows, 1):
            record = self.fixture.iloc[i]['Customer_Id']
            is_valid = len(str(record)) <= 18 and record != ''
            if not (is_valid):
                break
        self.assertEqual(True, is_valid)

    def test_col_open_date(self):
        is_valid = False
        for i in range(0, self.num_of_rows, 1):
            record = self.fixture.iloc[i]['Open_Date']
            is_valid = len(str(record)) == 8 and str(record) != '' and isinstance(record, numpy.int64)
            if not (is_valid):
                break
        self.assertEqual(True, is_valid)

    def test_col_vac_id(self):
        is_valid = False
        for i in range(0, self.num_of_rows, 1):
            record = self.fixture.iloc[i]['Vaccination_Id']
            is_valid = len(str(record)) <= 5
            if not (is_valid):
                break
        self.assertEqual(True, is_valid)

    def test_col_dr_name(self):
        is_valid = False
        for i in range(0, self.num_of_rows, 1):
            record = self.fixture.iloc[i]['Dr_Name']
            is_valid = len(str(record)) <= 255
            if not (is_valid):
                break
        self.assertEqual(True, is_valid)

    def test_col_state(self):
        is_valid = False
        for i in range(0, self.num_of_rows, 1):
            record = self.fixture.iloc[i]['State']
            is_valid = len(str(record)) <= 5
            if not (is_valid):
                break
        self.assertEqual(True, is_valid)

    def test_col_country(self):
        is_valid = False
        for i in range(0, self.num_of_rows, 1):
            record = self.fixture.iloc[i]['Country']
            is_valid = len(str(record)) <= 5
            if not (is_valid):
                break
        self.assertEqual(True, is_valid)

    def test_col_dob(self):
        is_valid = False
        for i in range(0, self.num_of_rows, 1):
            record = self.fixture.iloc[i]['DOB']
            is_valid = len(str(record)) == 8 and isinstance(record, numpy.int64)
            if not (is_valid):
                break

    def test_col_is_active(self):
        is_valid = False
        for i in range(0, self.num_of_rows, 1):
            record = self.fixture.iloc[i]['Is_Active']
            is_valid = len(str(record)) == 1
            if not (is_valid):
                break
        self.assertEqual(True, is_valid)
