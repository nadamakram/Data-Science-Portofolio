#`Sell - Buy`

WITH buy_t AS
(
SELECT stock_name, sum(price) AS sum_buy 
FROM Stocks 
WHERE operation = 'Buy'
GROUP BY stock_name
),
 
sell_t AS
(
SELECT stock_name, sum(price) AS sum_sell
FROM Stocks 
WHERE operation = 'Sell'
GROUP BY stock_name

)


select sell_t.stock_name, sell_t.sum_sell - buy_t.sum_buy AS capital_gain_loss  
from  buy_t
JOIN sell_t on sell_t.stock_name = buy_t.stock_name 