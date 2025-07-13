SELECT b.*, u.name, u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;
SELECT p.*, r.rating, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;
SELECT u.*, b.*
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;
