-- ÖDEV 12

-- 1. Film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) FROM film
WHERE length > (
	SELECT AVG(length) From film
);

-- 2. Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) FROM film
WHERE rental_rate = (
	SELECT MAX(rental_rate) FROM film
);

-- 3. Film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT * FROM film
WHERE rental_rate = ANY (
	SELECT MIN(rental_rate) FROM film
) 
AND
replacement_cost = ANY (
	SELECT MIN(replacement_cost) FROM film
);

-- 4. Payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT customer_id, first_name, last_name FROM customer
WHERE customer_id = (
	SELECT customer_id FROM payment
	GROUP BY customer_id
	HAVING COUNT(*) = (
		SELECT COUNT(*) FROM payment
		GROUP BY customer_id
		ORDER BY COUNT(*) DESC
		LIMIT 1
	)
