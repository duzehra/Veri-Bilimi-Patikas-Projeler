# Veri-Bilimi-Patikasi-Projeler

# SQL ÖDEV 1
### 1. Film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
SELECT title, description FROM film

### 2. Film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
SELECT * FROM film
WHERE lenght > 60 AND lenght <75

### 3. Film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
SELECT * FROM film
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost=28.99)

### 4. Customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
SELECT first_name, last_name FROM customer
WHERE first_name = 'Mary'

### 5. Film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.
SELECT * FROM film
WHERE NOT (rental_rate =2.99 OR rental_rate=4.99 ) AND lenght <50


# SQL ÖDEV 2
### 1. Film tablosunda bulunan tüm sütunlardaki verileri replacement_cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)
SELECT * FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99

### 2. Actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)
SELECT * FROM actor
WHERE first_name IN('Penelope', 'Nick', 'Ed')

### 3. Film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)
SELECT * FROM Musteriler
WHERE rental_rate IN(0.99, 2.99, 4.99) AND replacement_cost IN(12.99, 15.99, 28.99)


# SQL ÖDEV 4
### 1. Film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
SELECT DISTINCT replacement_cost FROM film;

### 2. Film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) FROM film ;

### 3. Film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(*) FROM film
WHERE title LİKE 'T%' and rating = 'G';

### 4. Country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT COUNT(*) FROM country
WHERE ulke LİKE '_____'

### 5. City tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?
SELECT COUNT(*) FROM city
WHERE Sehir LİKE '%r' OR Sehir LİKE '%R'


# SQL ÖDEV 5
### 1. Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
SELECT * FROM film
WHERE title LIKE '%n'
ORDER BY lenght DESC
LIMIT 5;

### 2. Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci 5 filmi sıralayınız.
SELECT * FROM film
WHERE title LIKE '%n'
ORDER BY lenght
LIMIT 5;

### 3. Customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
SELECT * FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;


# SQL ÖDEV 6
### 1. Film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT AVG(rental_rate) FROM film

### 2. Film tablosunda bulunan filmlerden kaçtanesi 'C' karekteri ile başlar?
SELECT COUNT(*) FROM film
WHERE title LIKE 'C%'

### 3. Film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
SELECT * FROM film
WHERE rental_rate=0.99
ORDER BY lenght DESC
LIMIT 1

### 4. Film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT COUNT(DISTINCT(replacement_cost)) FROM film
WHERE lenght > 150


# SQL ÖDEV 9
### 1. City tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT city, country FROM city
INNER JOIN country ON  city.country_id = country.country_id

### 2. Customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT payment.payment_id, customer.first_name, customer.last_name FROM customer
INNER JOIN payment ON payment.customer_id=customer.customer_id

### 3. Customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT rental_id, first_name, last_name FROM rental
INNER JOIN customer ON  customer.customer_id = rental.customer_id

  
# SQL ÖDEV 11
### 1. Actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
SELECT first_name FROM [customer]
UNION
SELECT first_name FROM [actor]
ORDER BY first_name;

### 2. Actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
SELECT first_name FROM [customer]
INTERSECT
SELECT first_name FROM [actor]
ORDER BY first_name;

### 3. Actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer
ORDER BY first_name;

### 4. İlk 3 sorguyu tekrar eden veriler için de yapalım.
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer
ORDER BY first_name;

SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer
ORDER BY first_name;

SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer
ORDER BY first_name;


# SQL ÖDEV 12

### 1. Film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) FROM film
WHERE length > (
	SELECT AVG(length) From film
);

### 2. Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) FROM film
WHERE rental_rate = (
	SELECT MAX(rental_rate) FROM film
);

### 3. Film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT * FROM film
WHERE rental_rate = ANY (
	SELECT MIN(rental_rate) FROM film
) 
AND
replacement_cost = ANY (
	SELECT MIN(replacement_cost) FROM film
);

### 4. Payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
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
