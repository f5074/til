-- 문제1번)  상품별 주문 수 와 전체 주문수를 함께 보여주세요.
-- 문제2번)  상품 이름과 카테고리별 전체 매출액을 알려주세요.또한, 카테고리별 전체 매출액 도 함께 알려주세요.
-- 문제3번) 자전거 카테고리 주문 량이 매달 증가하고 있나요? (2017년 1월 ~ 12월 까지 판매량만 확인하시면 됩니다.)
-- 월별 주문량을 이전 달 주문량과 함께 표기해 증가 여부를 알려주세요. (analytic function 활용)
-- Hint 아래의 표기 값으로 산출 해주세요. 
-- 1) 전 달 보다 값이 크다면 ? 'PLUS’
-- 2) 이전 달의 값이 현재 값 보다 크다면 ? 'MINUS’
-- 3) 현재 달의 판매 량과 이전 달 값이 같다면 ? 'SAME’
-- 4) 이 외의 Case ? NULL
-- 문제4번) 제품 카테고리, 주(state) 기준으로 보유한 물량을 보여주고, 주(state) 전체 보유물량도 함께 나열하세요. (analytic function 활용)
-- 문제5번)  주문일자가 2017/09/01 ~ 2017/12/31 일에 해당하는 주문 에 대해서,  월별 고객별 결제 금액을 기준으로 결제 금액에 대한 flag 를 함께 보여주세요. 
-- flag 는 아래와 같습니다.
-- - 고객의 결제금액이 10000 달러 아래에 경우 under1000
-- - 고객의 결제금액이 10001 ~ 100000 에 해당하는 경우 under100000 
-- - 고객의 결제금액이 100001 ~ 500000에 해당하는 경우 under500000
-- - 고객의 결제금액이 500001 이상인 경우 over500000



-- 문제1번)  상품별 주문 수 와 전체 주문수를 함께 보여주세요.
select od.productnumber as productnumber, sum(od.quantityordered) as cnt, '상품별 주문수' as type
 from orders o
inner join order_details od on od.ordernumber = o.ordernumber
where 1 = 1
group by od.productnumber
union
select null as productnumber, sum(od.quantityordered) as cnt, '전체 주문수' as type
 from orders o
inner join order_details od on od.ordernumber = o.ordernumber
where 1 = 1
order by productnumber


-- 문제2번)  상품 이름과 카테고리별 전체 매출액을 알려주세요.또한, 카테고리별 전체 매출액 도 함께 알려주세요.
select p.productname, p.categoryid, sum(od.quantityordered * od.quotedprice) as price
 from orders o
inner join order_details od on od.ordernumber = o.ordernumber
inner join products p on p.productnumber = od.productnumber
group by grouping sets ((p.productname, p.categoryid), (p.categoryid))
order by p.categoryid, p.productname


-- 문제3번) 자전거 카테고리 주문 량이 매달 증가하고 있나요? (2017년 1월 ~ 12월 까지 판매량만 확인하시면 됩니다.)
-- 월별 주문량을 이전 달 주문량과 함께 표기해 증가 여부를 알려주세요. (analytic function 활용)
-- Hint 아래의 표기 값으로 산출 해주세요. 
-- 1) 전 달 보다 값이 크다면 ? 'PLUS’
-- 2) 이전 달의 값이 현재 값 보다 크다면 ? 'MINUS’
-- 3) 현재 달의 판매 량과 이전 달 값이 같다면 ? 'SAME’
-- 4) 이 외의 Case ? NULL

SELECT to_char(o.orderdate, 'YYYY-MM') AS month_date, p.categoryid, sum(od.quantityordered) cur_qty, lag(sum(od.quantityordered), 1) over () as prev_qty, sum(od.quantityordered) - lag(sum(od.quantityordered), 1) over () as cur_diff,
	 case when sum(od.quantityordered) - lag(sum(od.quantityordered), 1) over () > 0  then 'PLUS'
	  	  when sum(od.quantityordered) - lag(sum(od.quantityordered), 1) over () < 0  then 'MINUS'
	  	  when sum(od.quantityordered) - lag(sum(od.quantityordered), 1) over () = 0  then 'SAME'
	 		else  null end as flag
FROM orders o
inner join order_details od on od.ordernumber = o.ordernumber
inner join products p on p.productnumber = od.productnumber
WHERE o.orderdate between '2017-01-01' and '2017-12-31'
  and p.categoryid = '2'
GROUP BY to_char(o.orderdate, 'YYYY-MM'), p.categoryid
order by month_date



-- 문제4번) 제품 카테고리, 주(state) 기준으로 보유한 물량을 보여주고, 주(state) 전체 보유물량도 함께 나열하세요. (analytic function 활용)
select p.categoryid, v.vendstate, sum(p.quantityonhand)
 from products p 
inner join product_vendors pv on pv.productnumber = p.productnumber
inner join vendors v on v.vendorid = pv.vendorid
group by grouping sets ((p.categoryid, v.vendstate), (v.vendstate))
order by categoryid



-- 문제5번)  주문일자가 2017/09/01 ~ 2017/12/31 일에 해당하는 주문 에 대해서,  월별 고객별 결제 금액을 기준으로 결제 금액에 대한 flag 를 함께 보여주세요. 
-- flag 는 아래와 같습니다.
-- - 고객의 결제금액이 10000 달러 아래에 경우 under1000
-- - 고객의 결제금액이 10001 ~ 100000 에 해당하는 경우 under100000 
-- - 고객의 결제금액이 100001 ~ 500000에 해당하는 경우 under500000
-- - 고객의 결제금액이 500001 이상인 경우 over500000
SELECT to_char(o.orderdate, 'YYYY-MM') AS month_date, o.customerid, sum(od.quantityordered *  od.quotedprice) as month_price,
	(case when sum(od.quantityordered *  od.quotedprice) <= 10000 then 'under1000' 
	     when sum(od.quantityordered *  od.quotedprice) <= 100000 then 'under100000'
	     when sum(od.quantityordered *  od.quotedprice) <= 500000 then 'under500000'
	     when sum(od.quantityordered *  od.quotedprice) > 500001 then 'over500000' end) as flag
FROM orders o
inner join order_details od on od.ordernumber = o.ordernumber
WHERE o.orderdate between '2017-09-01' and '2017-12-31'
GROUP BY to_char(o.orderdate, 'YYYY-MM'), o.customerid
order by o.customerid


---

