select * from sales
CREATE VIEW sales_view AS
SELECT 
    Order_date,
    Ship_date,
    Ship_mode,
    Sales
FROM sales
WHERE Sales > 100;

--update
UPDATE sales_view
SET Sales = Sales * 1.10;

SELECT * from sales_view

--alter
ALTER VIEW sales_view
RENAME TO sales_performance

SELECT * from sales_performance

--delete

DELETE FROM sales_performance
WHERE Ship_mode = 'Standard class' 

SELECT * from sales_performance
