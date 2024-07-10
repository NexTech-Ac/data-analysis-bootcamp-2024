-- Create a new database named 'stock_analysis'
CREATE DATABASE stock_analysis; 

-- Select the 'stock_analysis' database for use
USE stock_analysis;

-- Create a table named 'safaricom_stock_prices' to store stock price data
CREATE TABLE safaricom_stock_prices (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each record
    date DATE,                          -- Date of the stock price
    open DECIMAL(5, 2),                 -- Opening price of the stock
    high DECIMAL(5, 2),                 -- Highest price of the stock during the day
    low DECIMAL(5, 2),                  -- Lowest price of the stock during the day
    close DECIMAL(5, 2),                -- Closing price of the stock
    volume INT,                         -- Volume of stocks traded
    change_percentage DECIMAL(5, 4)     -- Percentage change in stock price from previous day
);

-- Select all records from the 'safaricom_stock_prices' table
SELECT * FROM stock_analysis.safaricom_stock_prices;

# Descriptive Stats
-- Earliest and Latest Date, Count of records
SELECT 
    MIN(Date) AS earliest_date,
    MAX(Date) AS latest_date,
    COUNT(*) AS record_count
FROM 
    safaricom_stock_prices;

-- Average for Open, High, Low, Close, Vol., Change %
SELECT 
    AVG(open) AS avg_open,
    AVG(high) AS avg_high,
    AVG(low) AS avg_low,
    AVG(close) AS avg_close,
    AVG(volume) AS avg_volume,
    AVG(change_percentage) AS avg_change
FROM safaricom_stock_prices;

--  Minimum and  Maximum values
SELECT
	MIN(open) AS min_open,
    MAX(open) AS max_open,
    MIN(high) AS min_high,
    MAX(high) AS max_high,
    MIN(low) AS min_low,
    MAX(low) AS max_low,
    MIN(close) AS min_close,
    MAX(close) AS max_close,
    MIN(volume) AS min_volume,
    MAX(volume) AS max_volume,
    MIN(change_percentage) AS min_change,
    MAX(change_percentage) AS max_change
FROM safaricom_stock_prices;
    
-- Standard Deviation 
SELECT
	STDDEV_POP(open) AS stddev_open,
    STDDEV_POP(high) AS stddev_high,
    STDDEV_POP(low) AS stddev_low,
    STDDEV_POP(close) AS stddev_close,
    STDDEV_POP(volume) AS stddev_volume,
    STDDEV_POP(change_percentage) AS stddev_change
FROM  safaricom_stock_prices;

-- Calculate the average closing price for each month and order the results by month
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month,  -- Format date as 'YYYY-MM' to group by month
    AVG(close) AS avg_close               -- Calculate average closing price for each month
FROM 
    safaricom_stock_prices
GROUP BY 
    month                                 -- Group results by month
ORDER BY 
    month;                                -- Order results by month

-- Calculate the total volume of stocks traded for each year and order the results by year
SELECT 
    DATE_FORMAT(date, '%Y') AS year,      -- Format date as 'YYYY' to group by year
    SUM(volume) AS total_volume           -- Calculate total volume traded for each year
FROM 
    safaricom_stock_prices
GROUP BY 
    year                                  -- Group results by year
ORDER BY 
    year;                                 -- Order results by year

-- Calculate the 7-day moving average of the closing price
SELECT 
    date, 
    close, 
    AVG(close) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg_7d  -- Calculate moving average over last 7 days
FROM 
    safaricom_stock_prices;

-- Identify the highest and lowest stock prices, along with their corresponding dates
WITH PriceExtremes AS (
    SELECT 
        date, 
        high, 
        low, 
        RANK() OVER (ORDER BY high DESC) AS high_rank,  -- Rank the prices by highest value
        RANK() OVER (ORDER BY low ASC) AS low_rank      -- Rank the prices by lowest value
    FROM 
        safaricom_stock_prices
)
SELECT 
    date, 
    high, 
    low
FROM 
    PriceExtremes
WHERE 
    high_rank = 1 OR low_rank = 1;                      -- Select the highest and lowest prices

-- Select dates and volumes where the trading volume is greater than the average volume
SELECT 
    date, 
    volume AS above_avg_vol
FROM 
    safaricom_stock_prices
WHERE 
    volume > (SELECT AVG(volume) FROM safaricom_stock_prices);  -- Compare volume with the average volume
