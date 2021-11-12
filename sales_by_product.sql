SELECT
	p.EnglishProductName,
	sum(s.OrderQuantity) as total_quantity,
	sum(s.SalesAmount) as total_sales
FROM
	dbo.FactInternetSales s
JOIN
	dbo.DimProduct p
ON s.ProductKey = p.ProductKey
GROUP BY
p.EnglishProductName;