#PostgreSQL range partition example:
CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    ...
) PARTITION BY RANGE (start_date);

CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

-- Repeat for other years...
#Query to test:
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
