CREATE TABLE hdfc_nav (
    date DATE,
    nav REAL
);

CREATE TABLE etf_prices (
    fund_symbol TEXT,
    price_date DATE,
    open REAL,
    high REAL,
    low REAL,
    close REAL,
    adj_close REAL,
    volume INTEGER
);