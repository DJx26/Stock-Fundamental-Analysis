def classify_stock(financial_data):
    pe_ratio = financial_data.get('forwardPE', None)
    debt_to_equity = financial_data.get('debtToEquity', None)
    roe = financial_data.get('returnOnEquity', None)
    current_ratio = financial_data.get('currentRatio', None)

    safe = 1
    risky = 0

    if pe_ratio and pe_ratio < 25 and debt_to_equity and debt_to_equity < 1 and roe and roe > 0.15 and current_ratio and current_ratio > 1:
        return safe
    else:
        return risky
stock_safety = classify_stock(ratios)

print("Stock classification (1=Safe, 0=Risky): ", stock_safety)


