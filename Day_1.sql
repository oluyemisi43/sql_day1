-- #1
select count(actor_id) from actor
where last_name='Wahlberg'

--#2
select count(*) from payment
where amount between 3.99 and 5.99

--#3
select film_id, count(*) AS NUM_count from inventory group BY film_id order by NUM_count DESC LIMIT 1

--#4 
select count(*) from customer where last_name = 'William'

--#5
select id from employee order by rentals_sold DESC limit 1

--#6
select COUNT(DISTINCT district_name) from district


--#7
select film_id,count(*) as num_count from film_actor group by film_id order by num_count DESC LIMIT 1

--#8
select count(*) from customer where store_id = 1 and last_name like '%es'

--#9
select count(*) from (select amount, count(*) as num_count from payment where cust_id between 380 and 430 group by amount having num_count>250)

--#10
select count(DISTINCT rating_category) from film

select rating_category,COUNT (*) as num_count from film GROUP by rating_category order by num_count DESC limit 1