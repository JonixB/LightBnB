SELECT reservations.id as id, properties.title as title, reservations.start_date as start_date, properties.cost_per_night as cost_per_night, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN reservations on properties.id = reservations.property_id
JOIN property_reviews ON reservations.property_id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;