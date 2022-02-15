use sakila;
create table rentals_may as (
select *
from Rental
where rental_date like '%-05-%');
select * from rentals_may;

insert into rental_may values(1, 2, 24-05-2005);

create table rental_june as(
select *
from rental
where rental_date like '%-06-$');
select * from rentals_june;

insert into rental_june values(    );

select customer_id, count(rental_id)
from rentals_may
group by customer_id
order by num_rentals Desc;

select  customer_id, count(rental_id) as num_rentals
from rentals_june
group by customer_id
order by num_rentals desc;