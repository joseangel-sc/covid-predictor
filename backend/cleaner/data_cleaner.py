from dataclasses import dataclass
import pandas as pd


@dataclass
class Cleaner:
    file: str
    country: str = 'Mexico'

    def keep_date_only(self) -> pd.DataFrame:
        df = pd.read_csv(self.file)
        df = df[df['Country/Region'] == self.country]
        df.drop(columns=['Province/State', 'Country/Region', 'Lat', 'Long'], inplace=True)
        df.reset_index(drop=True, inplace=True)
        df = df.transpose()
        df.reset_index(inplace=True)
        df.rename(columns={'index': 'ds', 0: 'y'}, inplace=True)
        df['ds'] = pd.to_datetime(df['ds'])
        return df

