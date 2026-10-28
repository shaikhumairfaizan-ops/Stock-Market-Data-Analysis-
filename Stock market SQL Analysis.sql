create schema if not exists stock_market_db;

USE stock_market_db;

Show tables;

-- see data 
select*from  stock_data limit 10;


-- Total records ?
select count(*) from  stock_data ;

-- highest closing price ?
select max(close)  from stock_data;

-- Lowest Closing Price ?
select min(close) from stock_data;

-- average closing Price ?
select avg(close) from stock_Data;

-- every stock avg closing price '
select stock, avg( close) as averag_closing_price from stock_data group by stock;

-- top 10 closing price
select stock, (close) from stock_data order by close desc limit 10;

-- highest and lowest price of stock 
select stock ,max(high) as "highest price" ,
min(low) as "lowest price" from stock_data group by stock;

-- Top 10 highest volume stocks 
select stock, (volume)  from stock_data order by volume desc limit 10;

-- Daily price range of stocks top 10 
select stock, High, low , (High - Low) as daily_range from stock_data limit 10;

-- Daily average range 
select stock, avg(high - low) as average_range from stock_data group by stock;

-- Finding any value missing in data ?
select count(*) as total_rows ,
count(stock) as stock_filled ,
count(high) as high_filled,
count(low) as low_filled,
count(close) as close_filled,
count(volume) as volume_filled 
from stock_data;

-- top Avg volume from each stock ..
select stock , avg(volume) as average_volume from stock_data  group by stock order by  average_volume desc;


-- Check high and low price diffrence 
select stock ,high, low from stock_Data where high<low;
 

SELECT
    Stock,
    COUNT(*) AS Total_Records,
    ROUND(AVG(Close), 2) AS Average_Close,
    MAX(High) AS Highest_Price,
    MIN(Low) AS Lowest_Price,
    ROUND(AVG(Volume), 0) AS Average_Volume
FROM stock_data
GROUP BY Stock
ORDER BY Average_Close DESC;






