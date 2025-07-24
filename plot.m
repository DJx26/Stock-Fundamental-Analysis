import yfinance as yf
import pandas as pd
import matplotlib.pyplot as plt


df = yf.download('NHPC.NS', start='2015-01-01', end='2023-01-01')

plt.figure(figsize=(12, 6))
plt.plot(df['Close'], label='NHPC Close Price', color='blue')
plt.title('NHPC Stock Price (2015 - 2023)')
plt.xlabel('Date')
plt.ylabel('Close Price (INR)')
plt.legend()
plt.grid()
plt.show()

df['50-day MA'] = df['Close'].rolling(window=50).mean()
df['200-day MA'] = df['Close'].rolling(window=200).mean()

plt.figure(figsize=(12, 6))
plt.plot(df['Close'], label='Close Price', color='blue', alpha=0.6)
plt.plot(df['50-day MA'], label='50-Day Moving Average', color='orange')
plt.plot(df['200-day MA'], label='200-Day Moving Average', color='red')
plt.title('NHPC Stock Price with Moving Averages')
plt.xlabel('Date')
plt.ylabel('Price (INR)')
plt.legend()
plt.grid()
plt.show()
