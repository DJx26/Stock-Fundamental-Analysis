import yfinance as yf
#acc. to your replace stock name
stock = yf.Ticker('NHPC.NS')


balance_sheet = stock.balance_sheet.T
cashflow = stock.cashflow.T
income_statement = stock.financials.T
ratios = stock.info


df = yf.download('NHPC.NS', start='2015-01-01', end='2023-01-01')
print("P/E Ratio: ", ratios['forwardPE'] if 'forwardPE' in ratios else "N/A")
print("Debt-to-Equity: ", ratios['debtToEquity'] if 'debtToEquity' in ratios else "N/A")
print("Return on Equity (ROE): ", ratios['returnOnEquity'] if 'returnOnEquity' in ratios else "N/A")
