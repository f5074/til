-- 1.자전거 나 타이어를 주문한 적이 없는 고객을 보여주세요. 라는 문제를 풀이한다고 할때, 빈 칸에 들어갈 정답을 알려주세요.
select *
  from  customers as c
where customerid not in (
    select distinct o.customerid
      from orders as o
    join order_details as od on od.ordernumber = o.ordernumber
    join products as p on p.productnumber = od.productnumber
    join categories as c on c.categoryid = p.categoryid
    where c.categorydescription in ('Bikes', 'Tires')
)



-- 2.주문이 가장 많이 있었던, 카테고리 아이디와, 카테고리 description에 대해서 알려주세요. 라는 문제를 풀이할 경우, 빈칸1, 빈칸2에 해당하는 문법 2개를 골라주세요.
select *
  from categories c
where  categoryid = any (
    select p.categoryid
      from order_details od 
       join products p on p.productnumber = od.productnumber
       group by p.categoryid
       order by count(distinct ordernumber) desc 
       limit 1
)


-- 3. 특정 주문 일에 해당하는 주문일, 상품 이름별 총 매출액과 주문 일자에 해당하는 총 매출액을 함께 알려주는 쿼리를 작성하려고 합니다. grouping sets 에 포함되어야 하는 구문을 골라주세요.

select orderdate, productname, sum(prices) as price
  from (
        select o.orderdate, o.customerid, o.ordernumber, od.productnumber, p.productname, c.categorydescription, od.quotedprice * od.quantityordered as prices
         from orders as o
         join order_details as od on od.ordernumber = o.ordernumber
         join products as p on p.productnumber = od.productnumber
         join categories as c on c.categoryid = p.categoryid
  ) as db
  where orderdate between '2017-09-01' and '2017-09-05'
  group by grouping sets ((orderdate, productname), (orderdate))
  order by orderdate



-- 4. 월별 매출액과 총매출액을 함께 보여주는 쿼리를 작성하려고 합니다. 총 매출액에 대해서, NULL 로 도출되는 부분에 대해서 Total 이라는 단어로 대체하여 도출하기 위해서 사용할 수 있는 함수는 무엇일까요?
select coalesce(substring(cast(orderdate as varchar),1,7), 'total') as month, sum(prices) as price
  from ( 
      select o.orderdate, o.customerid, o.ordernumber, od.productnumber, p.productname, c.categorydescription, od.quotedprice * od.quantityordered as prices         from orders as o
         join order_details as od on od.ordernumber = o.ordernumber
         join products as p on p.productnumber = od.productnumber
         join categories as c on c.categoryid = p.categoryid
  ) as db
  where orderdate between '2017-09-01' and '2017-12-31'
  group by rollup (substring(cast(orderdate as varchar),1,7))  
  
  
-- 5. "카테고리 별로 재고 수량이 가장 많이 남은 상품 1개를 알려주세요. 재고 수량이 똑같을 시에는, 상품 번호 높은 순으로 순위를 매겨주세요" 쿼리를 작성 하려고 합니다. 빈칸1, 빈칸2, 빈칸3에 들어가야할 컬럼이 올바르게 매핑된 값을 골라주세요.
  select *
  from (
select productnumber, productname, quantityonhand, categoryid, row_number() over(partition by categoryid order by quantityonhand desc, productnumber desc) as rnum
from products p
  ) as p
where rnum = 1
  
  