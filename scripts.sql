--1
select distinct role_name
from m_roles;

--2
select concat(u.username, ' ', u.surname) as user, count(*)
from m_users u, m_cars c
where u.id = c.user_id
group by concat(u.username, ' ', u.surname), u.id
order by u.id;

--3
select ad.name, count(*) from m_auto_dealer ad
inner join m_cars c on c.dealer_id = ad.id
inner join m_body b on c.id = b.car_id
where c.year > 2018 AND b.color = 'Pink'
group by ad.name;

--4
select u.username from m_users u
inner join m_cars mc on u.id = mc.user_id
inner join m_engine me on mc.id = me.car_id
inner join m_auto_dealer mad on mc.dealer_id = mad.id
where u.country not in ('BELARUS', 'RUSSIA')
  AND mc.year between 2010 and 2015
  AND mc.country = 'GERMANY'
  AND mad.country not in ('GERMANY')
group by  u.username;

--5
select u.login, count(*) from m_users u
inner join m_cars mc on u.id = mc.user_id
group by u.login
having count(*) > 3;

--6
select ad.name, sum(mc.price) from m_auto_dealer ad
inner join m_cars mc on ad.id = mc.dealer_id
group by ad.name;

--7
select count(distinct u.username) from m_users u
inner join m_cars mc on u.id = mc.user_id
where mc.price > (select avg(price) from m_cars);