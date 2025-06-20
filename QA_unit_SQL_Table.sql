SELECT * 
FROM user_profiles
WHERE name LIKE '%am%';

SELECT MAX(totalcost) AS max_expense
FROM expenses e
JOIN cars c ON e.carId = c.id
JOIN car_brands b ON c.carbrandId = b.id
WHERE b.title = 'Audi';

SELECT carBrandId AS car_id, COUNT(id) AS count_models
FROM car_models
WHERE carBrandId IN (
    SELECT id FROM car_brands WHERE title IN ('AUDI', 'BMW')
)
GROUP BY carBrandId;

SELECT 
    m.title AS car_model, 
    b.title AS car_brand, 
    COUNT(DISTINCT c.userId) AS user_count
FROM cars c
JOIN car_models m ON c.carmodelId = m.id
JOIN car_brands b ON c.carbrandId = b.id
GROUP BY b.title, m.title;

SELECT DISTINCT u.name
FROM user_profiles u
JOIN cars c ON u.id = c.userId;


