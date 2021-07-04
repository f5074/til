--1. 4개의 이상 업체에서 판매하는 상품번호는 무엇인가요?
select max(productnumber),count(vendorid)
 from product_vendors pv
group by productnumber
order by max(productnumber)

--2. 2018년1월11일에 1024 고객아이디를 가진 사람이 652번에 지불한, 주문 금액은 얼마인가요? 소수점 금액을 제외한 값을 알려주세요. hint) 주문금액은 order_details 테이블의 quotedprice (상품개당 가격) , quantityordered( 상품 주문 갯수) 를 활용하여 확인 해야합니다.
select sum(od.quotedprice * od.quantityordered) as order_price
 from orders o
 inner join order_details od on od.ordernumber = o.ordernumber
where 1 = 1
  and o.orderdate = '2018-01-11'
  and o.customerid = '1024'
  and o.ordernumber = '652'

--3. 고객의 정보와 , 직원의 정보를 하나의 테이블로 표현하고자 합니다. 빈칸에 들어갈 값으로 알맞은 것을 모두 알려주세요.
select custfirstname || ', ' || custlastname as customer, 'Customer' as type
from customers
except
select empfirstname || ', ' || emplastname as staff, 'Staff' as type
from employees e
order by type

--4. 고객이 구매한 제품의 가격 ( = 상품의 개당 가격)이, "전체 제품리스트의 전체 평균 가격" 보다 높은 제품을 모두 알려주세요. Hint) 제품의 평균 소매가격은 - retailprice 에 대해서 평균 가격을 확인하시면 됩니다.
select od.productnumber
  from orders o
inner join order_details od on od.ordernumber =o.ordernumber
where 1 = 1
  and od.quotedprice > (select avg(retailprice) as retailprice from products)
group by od.productnumber  

--5. 주문을 많이 한 고객의 순서대로, 순위를 나열하려고합니다. 같은 주문의 수치를 갖은 고객에 대하여, 같은 등수로 보여주기 위해서 어떠한 함수를 사용해야 할까요? 추가로, 1등 이후는 2등이 오는 구조를 만족해야합니다.
select dense_rank() over (order by count(ordernumber) desc) ,customerid , count(ordernumber)
  from orders
 where 1 = 1
group by customerid
