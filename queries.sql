-- 1. Top funds by NAV growth
SELECT amfi_code,
       MAX(nav) - MIN(nav) AS nav_growth
FROM hdfc_nav
GROUP BY amfi_code
ORDER BY nav_growth DESC
LIMIT 5;

-- 2. CAGR approx
SELECT amfi_code,
       (MAX(nav) / MIN(nav) - 1) * 100 AS return_pct
FROM hdfc_nav
GROUP BY amfi_code;

-- 3. ETF price avg
SELECT fund_symbol,
       AVG(close) AS avg_close
FROM etf_prices
GROUP BY fund_symbol;

-- 4. Total ETF records
SELECT COUNT(*) FROM etf_prices;

-- 5. NAV trend monthly (simple)
SELECT substr(date,1,7) AS month,
       AVG(nav)
FROM hdfc_nav
GROUP BY month;