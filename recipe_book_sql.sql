
  with tempa as (
  select
  row_number() over(order by page_no) as page,
  min(page_no) over () min_page,
  max(page_no) over() max_page,
  page_no,
  title
  from recipes
  ),
  
  
tempb as(  
select
t.page,
r.page_no,
r.title
from tempa t  left join tempa  r
on t.page = r.page_no

union

select 
t.page,
r.page_no,
r.title
from tempa t  right join tempa  r
on t.page = r.page_no),

tempc as(
select
case
when page is NULL then page_no
else page
end page,
title
from tempb

union 
select
0 as page,
NULL as title
from tempb
order by page),


tempd as(
select
 page,
case when page%2=0 then title
end as left_page,
case when page%2<>0 then title
end as right_page
from tempc),

tempe as(
select
left_page,
lead(right_page) over(order by page) as right_page
from tempd)


select left_page,
right_page
from tempe
where left_page is not null or right_page is not null