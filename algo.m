import pandas as pd
import numpy as np

data = {
    'PE_Ratio': [18.2, 35.4, 20.5],
    'Debt_to_Equity': [0.5, 1.8, 0.9],
    'ROE': [0.25, 0.09, 0.17],
    'Current_Ratio': [1.3, 0.8, 1.5],
    'Revenue_Growth': [0.1, 0.05, 0.12],
    'Safe_or_Risky': [1, 0, 1]
}

df = pd.DataFrame(data)

X = df[['PE_Ratio', 'Debt_to_Equity', 'ROE', 'Current_Ratio', 'Revenue_Growth']].values
y = df['Safe_or_Risky'].values

from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X_scaled, y, test_size=0.2, random_state=42)
