/*
1) Write a stored procedure to get the top n products by net sales for a given year.  
   Use product name without a variant. Input of stored procedure is fiscal_year and top_n parameter

*/
	CREATE PROCEDURE get_top_n_products_by_net_sales(
              in_fiscal_year int,
              in_top_n int
	)
	BEGIN
            select
                 product,
                 round(sum(net_sales)/1000000,2) as net_sales_mln
            from gdb041.net_sales
            where fiscal_year=in_fiscal_year
            group by product
            order by net_sales_mln desc
            limit in_top_n;
	END

call gdb0041.get_top_n_products_by_net_sales(2021, 3);

CALL get_top_n_products_by_net_sales (2020,4);
