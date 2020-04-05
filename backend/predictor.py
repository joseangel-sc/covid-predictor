from dataclasses import dataclass

import pandas as pd
from fbprophet import Prophet

@dataclass
class Prediction:
    df: pd.DataFrame
    days: int = 40

    def predict(self):
        model = Prophet()


