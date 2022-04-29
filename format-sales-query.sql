select name as 'Customer', format(Sales, 'C', 'en-US') as 'Sales Amount'
	from Customers
	order by sales;
/*utilize format to format the sales column as C for currency and
en-US for the currency of the USA.*/