--문제1번) 1번 주문 번호에 대해서, 상품명, 주문 금액과 1번 주문 금액에 대한 총 구매금액을 함께 보여주세요. 

--문제2번) 헬멧을 주문한 모든 고객과 자전거를 주문한 모든 고객을 나열하세요. (Union 활용) 헬멧과 자전거는 Products 테이블의 productname 컬럼을 이용해서 확인해주세요.

--문제3번) 주문일자가 2017/09/01 ~ 2017/09/30 일에 해당하는 주문에 대해서 주문일자와 고객별로 주문 수를 확인해주세요. 
--또한 고객별 주문 수도 함께 알려주세요.

--문제4번) 주문일자가 2017/09/01 ~ 2017/09/30일에 해당하는 주문에 대해서, 주문일자와 고객별로 주문 수를 확인해주세요. 
--또한 주문일자별 주문 수도 함께 알려주시고, 전체 주문 수도 함께 알려주세요.

--문제5번) 2017년도의 주문일 별 주문 금액과, 월별 주문 총 금액을 함께 보여주세요. 
--동시에 일별 주문 금액이 월별 주문 금액에 해당하는 비율을 같이 보여주세요. (analytic function 활용)


--문제1번) 1번 주문 번호에 대해서, 상품명, 주문 금액과 1번 주문 금액에 대한 총 구매금액을 함께 보여주세요. 

select o.ordernumber as order_number, o.customerid, p.productnumber,p.productname, p.retailprice
, od.quantityordered * od.quotedprice as order_price, sum(od.quantityordered * od.quotedprice) over(partition by o.ordernumber) as total_order_price
 from orders o
 inner join order_details od on od.ordernumber = o.ordernumber
 inner join products p on p.productnumber = od.productnumber
except
select o.ordernumber as order_number, o.customerid, p.productnumber,p.productname, p.retailprice
, od.quantityordered * od.quotedprice as order_price, sum(od.quantityordered * od.quotedprice) over(partition by o.ordernumber) as total_order_price
 from orders o
 inner join order_details od on od.ordernumber = o.ordernumber
 inner join products p on p.productnumber = od.productnumber
where 1 = 1
  and o.ordernumber <> '1'
  
  
--문제2번) 헬멧을 주문한 모든 고객과 자전거를 주문한 모든 고객을 나열하세요. (Union 활용) 헬멧과 자전거는 Products 테이블의 productname 컬럼을 이용해서 확인해주세요.
select o.customerid, 'Helmet' as type
 from orders o
inner join order_details od on od.ordernumber  = o.ordernumber  
where od.productnumber in (select productnumber from products p where productname like '%Helmet' )
group by o.customerid
union 
select o.customerid, 'Mountain Bike' as type
 from orders o
inner join order_details od on od.ordernumber  = o.ordernumber  
where od.productnumber in (select productnumber from products p where productname like '%Mountain Bike')
group by o.customerid
order by type, customerid

-------------------------

select o.customerid
 from orders as o 
        join order_details as od on o.ordernumber = od.ordernumber
        join products as p        on od.productnumber =p.productnumber
where p.productname like '%Bike'
union 
select o.customerid
 from orders as o 
         join order_details as od  on o.ordernumber = od.ordernumber
         join products as p         on od.productnumber =p.productnumber
where p.productname like '%Helmet';



--문제3번) 주문일자가 2017/09/01 ~ 2017/09/30 일에 해당하는 주문에 대해서 주문일자와 고객별로 주문 수를 확인해주세요. 
--또한 고객별 주문 수도 함께 알려주세요.
select o.orderdate, o.customerid, count(od.ordernumber) over(partition by o.customerid, o.orderdate) customerid_order_count, count(od.ordernumber) over(partition by o.customerid) total_order_count
 from orders o
 inner join order_details od on od.ordernumber = o.ordernumber
 inner join products p on p.productnumber = od.productnumber
where 1 = 1
  and o.orderdate between '2017-09-01' and '2017-09-30'

------------------------
select orderdate , customerid , count(distinct ordernumber) as cnt 
from orders o 
where orderdate  between '2017-09-01' and '2017-09-30'
group by grouping sets ((orderdate,customerid), (customerid))



--문제4번) 주문일자가 2017/09/01 ~ 2017/09/30일에 해당하는 주문에 대해서, 주문일자와 고객별로 주문 수를 확인해주세요. 
--또한 주문일자별 주문 수도 함께 알려주시고, 전체 주문 수도 함께 알려주세요.
select o.orderdate, o.customerid, count(od.ordernumber) over(partition by o.customerid, o.orderdate) as customerid_order_count
, count(od.ordernumber) over(partition by o.orderdate) as orderdate_order_count
 from orders o
 inner join order_details od on od.ordernumber = o.ordernumber
 inner join products p on p.productnumber = od.productnumber
where 1 = 1
  and o.orderdate between '2017-09-01' and '2017-09-30'
  

--문제5번) 2017년도의 주문일 별 주문 금액과, 월별 주문 총 금액을 함께 보여주세요. 
--동시에 일별 주문 금액이 월별 주문 금액에 해당하는 비율을 같이 보여주세요. (analytic function 활용)

SELECT to_char(o.orderdate, 'YYYY-MM') AS month_date, sum(od.quantityordered *  od.quotedprice) as total_price, 'month_price' as type
FROM orders o
inner join order_details od on od.ordernumber = o.ordernumber
WHERE o.orderdate between '2017-01-01' and '2017-12-31'
GROUP BY to_char(o.orderdate, 'YYYY-MM')
union 
SELECT to_char(o.orderdate, 'YYYY-MM-DD') AS day_date, sum(od.quantityordered *  od.quotedprice) as total_price, 'day_price' as type
FROM orders o
inner join order_details od on od.ordernumber = o.ordernumber
WHERE o.orderdate between '2017-01-01' and '2017-12-31'
GROUP BY to_char(o.orderdate, 'YYYY-MM-DD')
order by type


----


SELECT orderdate
	, sum(product_price) OVER (PARTITION BY orderdate) AS day_price
	, sum(product_price) OVER (PARTITION BY mm) AS monthly_price
	, sum(product_price) OVER (PARTITION BY orderdate) / sum(product_price) OVER (PARTITION BY mm) AS perc
FROM (
	SELECT mm
		, orderdate
		, sum(product_price) product_price
	FROM (
		SELECT o.ordernumber
			, orderdate
			, extract(month FROM o.orderdate) AS mm
			, od.productnumber
			, od.quotedprice * od.quantityordered AS product_price
		FROM orders AS o
		JOIN order_details od ON od.ordernumber = o.ordernumber
		WHERE o.orderdate BETWEEN '2017-09-01' AND '2017-12-31'
		) dt
	GROUP BY mm
		, orderdate
	) AS dt