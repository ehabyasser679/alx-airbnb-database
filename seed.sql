-- ============================================================================
-- SEED.SQL - SAMPLE DATA POPULATION SCRIPT
-- Property Booking System
-- ============================================================================
-- NOTE: Run schema.sql before running this file
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Insert Users (Guests, Hosts, and Admin)
-- ----------------------------------------------------------------------------
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
-- Guests
('550e8400-e29b-41d4-a716-446655440001', 'John', 'Doe', 'john.doe@example.com', '$2y$10$abcdefghijklmnopqrstuvwxyz123456', '+1-555-0101', 'guest', '2024-01-15 10:30:00'),
('550e8400-e29b-41d4-a716-446655440002', 'Jane', 'Smith', 'jane.smith@example.com', '$2y$10$bcdefghijklmnopqrstuvwxyz234567', '+1-555-0102', 'guest', '2024-01-20 14:15:00'),
('550e8400-e29b-41d4-a716-446655440003', 'Michael', 'Johnson', 'michael.j@example.com', '$2y$10$cdefghijklmnopqrstuvwxyz345678', '+1-555-0103', 'guest', '2024-02-05 09:45:00'),
('550e8400-e29b-41d4-a716-446655440004', 'Emily', 'Brown', 'emily.brown@example.com', '$2y$10$defghijklmnopqrstuvwxyz456789', '+1-555-0104', 'guest', '2024-02-10 16:20:00'),

-- Hosts
('550e8400-e29b-41d4-a716-446655440005', 'Sarah', 'Williams', 'sarah.w@example.com', '$2y$10$efghijklmnopqrstuvwxyz567890', '+1-555-0105', 'host', '2024-01-05 08:00:00'),
('550e8400-e29b-41d4-a716-446655440006', 'David', 'Martinez', 'david.m@example.com', '$2y$10$fghijklmnopqrstuvwxyz678901', '+1-555-0106', 'host', '2024-01-08 11:30:00'),
('550e8400-e29b-41d4-a716-446655440007', 'Lisa', 'Anderson', 'lisa.a@example.com', '$2y$10$ghijklmnopqrstuvwxyz789012', '+1-555-0107', 'host', '2024-01-12 13:45:00'),

-- Admin
('550e8400-e29b-41d4-a716-446655440008', 'Admin', 'User', 'admin@example.com', '$2y$10$hijklmnopqrstuvwxyz890123', '+1-555-0108', 'admin', '2024-01-01 00:00:00');

-- ----------------------------------------------------------------------------
-- Insert Properties
-- ----------------------------------------------------------------------------
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', 'Cozy Downtown Apartment', 'Beautiful 2-bedroom apartment in the heart of downtown. Walking distance to restaurants, shops, and entertainment. Features modern amenities, WiFi, and a fully equipped kitchen.', 'New York, NY', 150.00, '2024-01-10 10:00:00', '2024-01-10 10:00:00'),

('650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440005', 'Beachfront Villa', 'Stunning 4-bedroom villa with direct beach access. Enjoy breathtaking ocean views, private pool, and outdoor entertainment area. Perfect for families or groups.', 'Miami, FL', 350.00, '2024-01-11 11:30:00', '2024-01-11 11:30:00'),

('650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440006', 'Mountain Cabin Retreat', 'Rustic 3-bedroom cabin nestled in the mountains. Features fireplace, hot tub, and panoramic mountain views. Ideal for a peaceful getaway.', 'Aspen, CO', 275.00, '2024-01-15 09:15:00', '2024-01-15 09:15:00'),

('650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440006', 'Urban Loft Studio', 'Modern studio loft in trendy neighborhood. High ceilings, exposed brick, and contemporary furnishings. Perfect for solo travelers or couples.', 'San Francisco, CA', 125.00, '2024-01-18 14:20:00', '2024-01-18 14:20:00'),

('650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440007', 'Historic Brownstone', 'Charming 3-bedroom brownstone with original architectural details. Located in quiet, tree-lined neighborhood. Close to parks and public transportation.', 'Boston, MA', 200.00, '2024-01-20 16:45:00', '2024-01-20 16:45:00'),

('650e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440007', 'Desert Oasis Resort', 'Luxurious 5-bedroom desert resort with private pool and spa. Modern architecture with floor-to-ceiling windows. Spectacular sunset views.', 'Phoenix, AZ', 425.00, '2024-01-22 12:00:00', '2024-01-22 12:00:00');

-- ----------------------------------------------------------------------------
-- Insert Bookings
-- ----------------------------------------------------------------------------
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
-- Confirmed bookings
('750e8400-e29b-41d4-a716-446655440001', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', '2024-03-15', '2024-03-20', 750.00, 'confirmed', '2024-02-15 10:30:00'),

('750e8400-e29b-41d4-a716-446655440002', '650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440002', '2024-04-01', '2024-04-07', 2100.00, 'confirmed', '2024-02-20 14:15:00'),

('750e8400-e29b-41d4-a716-446655440003', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440003', '2024-05-10', '2024-05-15', 1375.00, 'confirmed', '2024-03-10 09:45:00'),

('750e8400-e29b-41d4-a716-446655440004', '650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440004', '2024-06-20', '2024-06-25', 625.00, 'confirmed', '2024-04-15 11:20:00'),

-- Pending bookings
('750e8400-e29b-41d4-a716-446655440005', '650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440001', '2024-07-01', '2024-07-05', 800.00, 'pending', '2024-06-01 15:30:00'),

('750e8400-e29b-41d4-a716-446655440006', '650e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440002', '2024-08-10', '2024-08-15', 2125.00, 'pending', '2024-06-15 16:45:00'),

-- Canceled booking
('750e8400-e29b-41d4-a716-446655440007', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440003', '2024-04-15', '2024-04-18', 450.00, 'canceled', '2024-03-05 13:20:00'),

-- Additional confirmed bookings
('750e8400-e29b-41d4-a716-446655440008', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440004', '2024-09-01', '2024-09-07', 1650.00, 'confirmed', '2024-07-01 10:00:00');

-- ----------------------------------------------------------------------------
-- Insert Payments
-- ----------------------------------------------------------------------------
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
-- Payments for confirmed bookings
('850e8400-e29b-41d4-a716-446655440001', '750e8400-e29b-41d4-a716-446655440001', 750.00, '2024-02-15 10:35:00', 'credit_card'),

('850e8400-e29b-41d4-a716-446655440002', '750e8400-e29b-41d4-a716-446655440002', 2100.00, '2024-02-20 14:20:00', 'stripe'),

('850e8400-e29b-41d4-a716-446655440003', '750e8400-e29b-41d4-a716-446655440003', 1375.00, '2024-03-10 09:50:00', 'paypal'),

('850e8400-e29b-41d4-a716-446655440004', '750e8400-e29b-41d4-a716-446655440004', 625.00, '2024-04-15 11:25:00', 'credit_card'),

-- Payment for canceled booking (before cancellation)
('850e8400-e29b-41d4-a716-446655440005', '750e8400-e29b-41d4-a716-446655440007', 450.00, '2024-03-05 13:25:00', 'credit_card'),

-- Payment for recent confirmed booking
('850e8400-e29b-41d4-a716-446655440006', '750e8400-e29b-41d4-a716-446655440008', 1650.00, '2024-07-01 10:05:00', 'stripe');

-- ----------------------------------------------------------------------------
-- Insert Reviews
-- ----------------------------------------------------------------------------
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
-- Reviews for completed stays
('950e8400-e29b-41d4-a716-446655440001', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', 5, 'Absolutely wonderful stay! The apartment was exactly as described, clean, and in a perfect location. Host was very responsive and helpful. Would definitely book again!', '2024-03-21 14:30:00'),

('950e8400-e29b-41d4-a716-446655440002', '650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440002', 5, 'Amazing beachfront property! The views were breathtaking and the villa had everything we needed. The private pool was a huge hit with the kids. Highly recommend!', '2024-04-08 16:45:00'),

('950e8400-e29b-41d4-a716-446655440003', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440003', 4, 'Great mountain retreat. The cabin was cozy and the hot tub was perfect after a day of hiking. Only minor issue was the WiFi was a bit slow, but that is understandable given the location.', '2024-05-16 11:20:00'),

('950e8400-e29b-41d4-a716-446655440004', '650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440004', 4, 'Stylish loft in great location. Perfect for exploring the city. The space was a bit smaller than expected but well-designed and comfortable. Would stay again!', '2024-06-26 09:15:00'),

('950e8400-e29b-41d4-a716-446655440005', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440003', 5, 'Fantastic apartment in the heart of downtown. Everything was within walking distance. The host provided excellent recommendations for local restaurants.', '2024-02-10 13:45:00'),

('950e8400-e29b-41d4-a716-446655440006', '650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440004', 5, 'Dream vacation spot! The villa exceeded all expectations. Beautiful property, amazing amenities, and perfect location right on the beach. 10/10!', '2024-03-15 15:30:00'),

('950e8400-e29b-41d4-a716-446655440007', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440001', 3, 'Nice cabin overall but had some maintenance issues. The fireplace was not working properly. Host was responsive and addressed the issue, but it took a day to fix.', '2024-04-20 10:00:00');

-- ----------------------------------------------------------------------------
-- Insert Messages
-- ----------------------------------------------------------------------------
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
-- Guest inquiring about property
('a50e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', 'Hi! I am interested in booking your downtown apartment for next month. Is it available from March 15-20?', '2024-02-10 09:30:00'),

-- Host responding
('a50e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440001', 'Hello! Yes, the apartment is available for those dates. I would be happy to host you. Please feel free to book through the platform.', '2024-02-10 10:15:00'),

-- Guest asking questions
('a50e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440005', 'Does your beachfront villa have parking? We will be driving from out of state.', '2024-02-15 14:20:00'),

('a50e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440002', 'Yes, we have a private driveway with space for 2 vehicles. There is also additional street parking available if needed.', '2024-02-15 15:30:00'),

-- Pre-arrival coordination
('a50e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440001', 'Just wanted to confirm your arrival time on March 15. Check-in is anytime after 3 PM. Looking forward to hosting you!', '2024-03-10 11:00:00'),

('a50e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', 'Thanks! We should arrive around 5 PM. Really excited about our stay!', '2024-03-10 13:45:00'),

-- Post-stay thank you
('a50e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', 'Thank you for a wonderful stay! Everything was perfect. We left a 5-star review.', '2024-03-21 10:00:00'),

-- Another guest inquiry
('a50e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440006', 'Hi! Is your mountain cabin pet-friendly? We have a small dog.', '2024-03-01 16:30:00'),

('a50e8400-e29b-41d4-a716-446655440009', '550e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440003', 'Hello! Yes, we welcome well-behaved pets. There is a $50 pet fee. Please let me know if you would like to proceed with the booking.', '2024-03-01 18:00:00'),

-- Admin message to host
('a50e8400-e29b-41d4-a716-446655440010', '550e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440005', 'Welcome to our platform! Your properties are now live. Please ensure all listings have accurate descriptions and photos.', '2024-01-10 12:00:00');

-- ============================================================================
-- VERIFICATION QUERIES (Optional - Uncomment to run)
-- ============================================================================

-- View all users by role
-- SELECT role, COUNT(*) as count FROM User GROUP BY role;

-- View all properties with host information
-- SELECT p.name, p.location, p.pricepernight, u.first_name, u.last_name 
-- FROM Property p JOIN User u ON p.host_id = u.user_id;

-- View all bookings with status
-- SELECT b.booking_id, p.name, u.first_name, u.last_name, b.start_date, b.end_date, b.status
-- FROM Booking b
-- JOIN Property p ON b.property_id = p.property_id
-- JOIN User u ON b.user_id = u.user_id;

-- View average rating per property
-- SELECT p.name, AVG(r.rating) as avg_rating, COUNT(r.review_id) as review_count
-- FROM Property p
-- LEFT JOIN Review r ON p.property_id = r.property_id
-- GROUP BY p.property_id, p.name;

-- ============================================================================
-- END OF SEED DATA
-- ============================================================================