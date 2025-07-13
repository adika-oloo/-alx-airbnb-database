SELECT b.*, u.name, p.name, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id;

##Use EXPLAIN ANALYZE to analyze performance

##Optimize by ensuring indexed columns are used in JOIN

##In optimization_report.md:

    ##Describe changes: removed redundant columns, ensured joins use indexed fields.
