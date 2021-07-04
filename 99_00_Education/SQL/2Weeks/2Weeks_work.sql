문제1번)  주문일이 2017-09-02 일에 해당 하는 주문건에 대해서,  어떤 고객이, 어떠한 상품에 대해서 얼마를 지불하여  상품을 구매했는지 확인해주세요.

 select c.custlastname || ' ' || c.custfirstname as customer_name, p.productname as product_name, od.quotedprice * od.quantityordered as price
  from orders o
inner join customers c on c.customerid  = o.customerid 
inner join order_details od on od.ordernumber  = o.ordernumber
inner join products p  on p.productnumber  = od.productnumber 
where 1 = 1
  and orderdate = '2017-09-02'

문제2번)  헬멧을 주문한 적 없는 고객을 보여주세요. 헬맷은, Products 테이블의 productname 컬럼을 이용해서 확인해주세요.

select c.customerid, c.custlastname || ' ' || c.custfirstname as customer_name
 from orders o
inner join customers c on c.customerid  = o.customerid 
inner join order_details od on od.ordernumber  = o.ordernumber  
where 1 = 1
  and od.productnumber not in (select productnumber from products p where productname not like '%Helmet%')
group by c.customerid, c.custlastname || ' ' || c.custfirstname
order by customerid 

문제3번)  모든 제품 과 주문 일자를 나열하세요. (주문되지 않은 제품도 포함해서 보여주세요.)

select p.productname, o.orderdate 
  from orders o
inner join order_details od on od.ordernumber  = o.ordernumber
right join products p  on p.productnumber  = od.productnumber 
group by p.productname, o.orderdate
order by p.productname, o.orderdate




문제4번) 대여점(store)별 영화 재고(inventory) 수량과 전체 영화 재고 수량은? (union all)
 



문제5번) 타이어과 헬멧을 모두 산적이 있는 고객의 ID 를 알려주세요.
- 타이어와 헬멧에 대해서는 , Products 테이블의 productname 컬럼을 이용해서 확인해주세요.


select c.customerid
 from orders o
inner join customers c on c.customerid  = o.customerid 
inner join order_details od on od.ordernumber  = o.ordernumber  
where 1 = 1
  and od.productnumber in (select productnumber from products p where (productname like '%Helmet%' or productname like '%Tires%'))
group by c.customerid
order by customerid 






