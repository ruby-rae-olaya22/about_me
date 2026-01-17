-- Verify user booking count
SELECT user_id, COUNT(*) AS total_bookings FROM bookings GROUP BY user_id;

-- Check data consistency between bookings and payments
SELECT b.booking_id, b.user_id, p.payment_status FROM bookings b LEFT JOIN payments p ON b.booking_id = p.booking_id WHERE p.payment_status IS NULL;

-- Get hotel availability table
SELECT hotel_id, available_rooms FROM hotel_inventory WHERE available_rooms > 0;