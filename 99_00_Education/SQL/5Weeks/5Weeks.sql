-- 문제1번) 주문일자가 2017/09/01 ~ 2017/12/31 일에 해당하는 주문 중에서 , 
--            주문 월별로 , 가장 판매가 많았던 상품 (productname) Top 5 개를 보여주세요. 
-- 문제2번) 주문일자가 2017/09/01 ~ 2017/12/31 일에 해당하는 주문 중에서 , 주문 월별로 , 결제 금액이 높은 고객 Top 3명을 보여주세요. 주문 월별로, 고객 3명을 알려주시고 / 고객의 Full name 을 함께 보여주세요. 
-- 문제3번) 주문일자가 2017/09/01 ~ 2017/12/31 일에 해당하는 주문 중에서 , 주문 월별로 , 결제 금액이 높은 고객 Top 3에 2번 이상 포함된 적이 있는 고객의 이름과 Top3에 포함된 횟수를 알려주세요. 
-- 문제4번) 상품 번호를 기준으로, 범위를 지정하여, 상품번호 그룹을 만들려고합니다. 각 상품 번호 그룹 별로, 주문 수를 알려주세요.
-- 상품번호번호에 그룹은 아래와 같습니다. 
--  - 상품번호가 1~ 10에 해당하면 between1_10  
--  - 상품번호가 11~20에 해당하면 between11_20  
--  - 상품번호가 21~30에 해당하면 between21_30 
--  - 상품번호가 31~40에 해당하면 between31_40
-- 문제5번) 타이어(Tires)  카테고리에 해당하는 2017/09/01 ~ 2017/09/10일에 주문 중, 주문 일자별 타이어 카테고리별 주문 수를 확인하고. 추가로 타이어 카테고리가 이전 주문일자의 주문 수를 노출하고, 이전 주문일자와 현 주문일자를 비교해주세요.  (with 절 활용)
-- 주문 수 비교에 대한 컬럼의 구성은 아래와 같습니다. 
--  - 이전 주문일자보다 주문 수가 늘었다면 plus 
--  - 이전 주문일자와 주문 수가 동일하다면 same 
--  - 이전 주문일자보다 주문 수가 줄었다면 minus


-- 문제1번) 주문일자가 2017/09/01 ~ 2017/12/31 일에 해당하는 주문 중에서 , 주문 월별로 , 가장 판매가 많았던 상품 (productname) Top 5 개를 보여주세요. 
WITH month9
AS (
select p.productname, sum(od.quantityordered) as cnt, 'Month 9' AS month_type
 from orders o
inner join order_details od on od.ordernumber = o.ordernumber
INNER JOIN products p ON p.productnumber = od.productnumber
where 1 = 1
  AND o.orderdate BETWEEN '2017-09-01' AND '2017-09-30'
group by p.productname
ORDER by sum(od.quantityordered) DESC limit 5
	)
	, month10
AS (
select p.productname, sum(od.quantityordered) as cnt, 'Month 10' AS month_type
 from orders o
inner join order_details od on od.ordernumber = o.ordernumber
INNER JOIN products p ON p.productnumber = od.productnumber
where 1 = 1
AND o.orderdate BETWEEN '2017-10-01' AND '2017-10-31'
group by p.productname
ORDER by sum(od.quantityordered) DESC limit 5
	)
	, month11
AS (
select p.productname, sum(od.quantityordered) as cnt, 'Month 11' AS month_type
 from orders o
inner join order_details od on od.ordernumber = o.ordernumber
INNER JOIN products p ON p.productnumber = od.productnumber
where 1 = 1
AND o.orderdate BETWEEN '2017-11-01' AND '2017-11-30'
group by p.productname
ORDER by sum(od.quantityordered) DESC limit 5
	)
	, month12
AS (
select p.productname, sum(od.quantityordered) as cnt, 'Month 12' AS month_type
 from orders o
inner join order_details od on od.ordernumber = o.ordernumber
INNER JOIN products p ON p.productnumber = od.productnumber
where 1 = 1
AND o.orderdate BETWEEN '2017-12-01' AND '2017-12-31'
group by p.productname
ORDER by sum(od.quantityordered) DESC limit 5
	)
SELECT *
FROM month9 m9
UNION ALL
SELECT *
FROM month10 m10
UNION ALL
SELECT *
FROM month11 m11
UNION ALL
SELECT *
FROM month12 m12

  


-- 문제2번) 주문일자가 2017/09/01 ~ 2017/12/31 일에 해당하는 주문 중에서 , 주문 월별로 , 결제 금액이 높은 고객 Top 3명을 보여주세요. 주문 월별로, 고객 3명을 알려주시고 / 고객의 Full name 을 함께 보여주세요. 
WITH month9
AS (
	SELECT o.customerid
		, sum(od.quantityordered * od.quotedprice) AS price
		, 'Month 9' AS month_type
	FROM orders o
	INNER JOIN order_details od ON od.ordernumber = o.ordernumber
	INNER JOIN products p ON p.productnumber = od.productnumber
	WHERE 1 = 1
		AND o.orderdate BETWEEN '2017-09-01'
			AND '2017-09-30'
	GROUP BY grouping sets(o.customerid)
	ORDER BY sum(od.quantityordered * od.quotedprice) DESC limit 3
	)
	, month10
AS (
	SELECT o.customerid
		, sum(od.quantityordered * od.quotedprice) AS price
		, 'Month 10' AS month_type
	FROM orders o
	INNER JOIN order_details od ON od.ordernumber = o.ordernumber
	INNER JOIN products p ON p.productnumber = od.productnumber
	WHERE 1 = 1
		AND o.orderdate BETWEEN '2017-10-01'
			AND '2017-10-31'
	GROUP BY grouping sets(o.customerid)
	ORDER BY sum(od.quantityordered * od.quotedprice) DESC limit 3
	)
	, month11
AS (
	SELECT o.customerid
		, sum(od.quantityordered * od.quotedprice) AS price
		, 'Month 11' AS month_type
	FROM orders o
	INNER JOIN order_details od ON od.ordernumber = o.ordernumber
	INNER JOIN products p ON p.productnumber = od.productnumber
	WHERE 1 = 1
		AND o.orderdate BETWEEN '2017-11-01'
			AND '2017-11-30'
	GROUP BY grouping sets(o.customerid)
	ORDER BY sum(od.quantityordered * od.quotedprice) DESC limit 3
	)
	, month12
AS (
	SELECT o.customerid
		, sum(od.quantityordered * od.quotedprice) AS price
		, 'Month 12' AS month_type
	FROM orders o
	INNER JOIN order_details od ON od.ordernumber = o.ordernumber
	INNER JOIN products p ON p.productnumber = od.productnumber
	WHERE 1 = 1
		AND o.orderdate BETWEEN '2017-12-01'
			AND '2017-12-31'
	GROUP BY grouping sets(o.customerid)
	ORDER BY sum(od.quantityordered * od.quotedprice) DESC limit 3
	)
	, month_total
AS (
	SELECT *
	FROM month9 m9
	UNION ALL
	SELECT *
	FROM month10 m10
	UNION ALL
	SELECT *
	FROM month11 m11
	UNION ALL	
	SELECT *
	FROM month12 m12
	)
SELECT mt.customerid
	, mt.price
	, mt.month_type
	, c.custlastname || ' ' || c.custfirstname AS fullname
FROM month_total mt
INNER JOIN customers c ON c.customerid = mt.customerid


-- 문제3번) 주문일자가 2017/09/01 ~ 2017/12/31 일에 해당하는 주문 중에서 , 주문 월별로 , 결제 금액이 높은 고객 Top 3에 2번 이상 포함된 적이 있는 고객의 이름과 Top3에 포함된 횟수를 알려주세요. 
WITH month9
AS (
	SELECT o.customerid
		, sum(od.quantityordered * od.quotedprice) AS price
		, 'Month 9' AS month_type
	FROM orders o
	INNER JOIN order_details od ON od.ordernumber = o.ordernumber
	INNER JOIN products p ON p.productnumber = od.productnumber
	WHERE 1 = 1
		AND o.orderdate BETWEEN '2017-09-01'
			AND '2017-09-30'
	GROUP BY grouping sets(o.customerid)
	ORDER BY sum(od.quantityordered * od.quotedprice) DESC limit 3
	)
	, month10
AS (
	SELECT o.customerid
		, sum(od.quantityordered * od.quotedprice) AS price
		, 'Month 10' AS month_type
	FROM orders o
	INNER JOIN order_details od ON od.ordernumber = o.ordernumber
	INNER JOIN products p ON p.productnumber = od.productnumber
	WHERE 1 = 1
		AND o.orderdate BETWEEN '2017-10-01'
			AND '2017-10-31'
	GROUP BY grouping sets(o.customerid)
	ORDER BY sum(od.quantityordered * od.quotedprice) DESC limit 3
	)
	, month11
AS (
	SELECT o.customerid
		, sum(od.quantityordered * od.quotedprice) AS price
		, 'Month 11' AS month_type
	FROM orders o
	INNER JOIN order_details od ON od.ordernumber = o.ordernumber
	INNER JOIN products p ON p.productnumber = od.productnumber
	WHERE 1 = 1
		AND o.orderdate BETWEEN '2017-11-01'
			AND '2017-11-30'
	GROUP BY grouping sets(o.customerid)
	ORDER BY sum(od.quantityordered * od.quotedprice) DESC limit 3
	)
	, month12
AS (
	SELECT o.customerid
		, sum(od.quantityordered * od.quotedprice) AS price
		, 'Month 12' AS month_type
	FROM orders o
	INNER JOIN order_details od ON od.ordernumber = o.ordernumber
	INNER JOIN products p ON p.productnumber = od.productnumber
	WHERE 1 = 1
		AND o.orderdate BETWEEN '2017-12-01'
			AND '2017-12-31'
	GROUP BY grouping sets(o.customerid)
	ORDER BY sum(od.quantityordered * od.quotedprice) DESC limit 3
	)
	, month_total
AS (
	SELECT *
	FROM month9 m9	
	UNION ALL	
	SELECT *
	FROM month10 m10	
	UNION ALL	
	SELECT *
	FROM month11 m11
	UNION ALL
	SELECT *
	FROM month12 m12
), top3_total as
(select customerid, count(customerid)
 from month_total
group by customerid)
select tt.customerid, tt.count, c.custlastname || ' ' || c.custfirstname AS fullname
 from top3_total tt
 INNER JOIN customers c ON c.customerid = tt.customerid
where 1 = 1
  and count >= 2

-- 문제4번) 상품 번호를 기준으로, 범위를 지정하여, 상품번호 그룹을 만들려고합니다. 각 상품 번호 그룹 별로, 주문 수를 알려주세요.
-- 상품번호번호에 그룹은 아래와 같습니다. 
--  - 상품번호가 1~ 10에 해당하면 between1_10  
--  - 상품번호가 11~20에 해당하면 between11_20  
--  - 상품번호가 21~30에 해당하면 between21_30 
--  - 상품번호가 31~40에 해당하면 between31_40


-- 문제5번) 타이어(Tires)  카테고리에 해당하는 2017/09/01 ~ 2017/09/10일에 주문 중, 주문 일자별 타이어 카테고리별 주문 수를 확인하고. 추가로 타이어 카테고리가 이전 주문일자의 주문 수를 노출하고, 이전 주문일자와 현 주문일자를 비교해주세요.  (with 절 활용)
-- 주문 수 비교에 대한 컬럼의 구성은 아래와 같습니다. 
--  - 이전 주문일자보다 주문 수가 늘었다면 plus 
--  - 이전 주문일자와 주문 수가 동일하다면 same 
--  - 이전 주문일자보다 주문 수가 줄었다면 minus
