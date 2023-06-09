-- Comments in SQL Start with dash-dash --

--1.--
SELECT * from  analytics
WHERE id = 1880;

--2.--
SELECT id, app_name FROM analytics
   WHERE last_updated = '2018-08-01';

--3.--
SELECT category, COUNT(*) FROM analytics 
  GROUP BY category;

--4.--
SELECT * FROM analytics 
  ORDER BY reviews DESC 
  LIMIT 5;

--5.--
SELECT * FROM analytics 
  WHERE rating >= 4.8 
  ORDER BY reviews DESC
  LIMIT 1;

--6.--
SELECT category, AVG(rating) FROM analytics
  GROUP BY category
  ORDER BY avg DESC;

--7.--
SELECT app_name, price, rating FROM analytics
  WHERE rating < 3
  ORDER BY price DESC
  LIMIT 1;

--8.--
SELECT * FROM analytics
  WHERE min_installs < 50 AND rating IS NOT NULL
  ORDER BY rating DESC;

--9.--
SELECT app_name from analytics
  WHERE rating < 3 AND reviews >= 10000;

--10.--
SELECT * FROM analytics
  WHERE cost BETWEEN 0.10 AND 1.00
  ORDER BY reviews DESC
  LIMIT 10;

--11.--
SELECT * FROM analytics 
  WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

--12.--
SELECT * FROM analytics 
  WHERE price = (SELECT MAX(price) FROM analytics);

--13.--
SELECT SUM(reviews) FROM analytics;

--14.--
SELECT category FROM analytics 
  GROUP BY category 
  HAVING COUNT(*) > 300;

--15.--
SELECT app_name, reviews, min_installs,  min_installs / reviews AS proportion
  FROM analytics
  WHERE min_installs >= 100000
  ORDER BY proportion DESC
  LIMIT 1;












