CREATE TABLE PRODUCTS (
	PRODUCT_ID SERIAL PRIMARY KEY,
	PRODUCT_NAME VARCHAR(255),    -- EXAMPLE: MILK, BACK PACK, TOWEL 
	PRODUCT_DESCRIPTION TEXT,
	BRAND_NAME VARCHAR(255),       -- EXAMPLE: NESTLE, RACINI, (NULL FOR NO BRAND)
	CATEGORY VARCHAR(255),		  -- EXAMPLE: DAIRY, APPLIANCES, CLOTHING
	UNIT VARCHAR(255),			  -- EXAMPLE: KILO, BOTTLE, GALLON, PIECE
	PRICE NUMERIC(12,2),		  -- IN PHILIPPINE PESO
	CURRENT_STOCKS INT,			  -- NULL IF NO STOCKS LEFT
	DELIVERY_BATCH INT,
	SUPPLIER VARCHAR(255),		  -- MUST BE KNOWN SUPPLIERS IN THE PHILIPPINES
	ORIGIN VARCHAR(255),		  -- MADE IN CHINA, MADE IN TAIWAN, PHILIPPINES?	
	EXPIRATION_DATE DATE,
	LATEST_DELIVERY TIMESTAMP,
	ENTRY_DATE TIMESTAMP,
	AVAILABLE BOOLEAN
);

INSERT INTO PRODUCTS (PRODUCT_NAME, PRODUCT_DESCRIPTION, BRAND_NAME, CATEGORY, UNIT, PRICE, CURRENT_STOCKS, DELIVERY_BATCH, SUPPLIER, ORIGIN, EXPIRATION_DATE, LATEST_DELIVERY, ENTRY_DATE, AVAILABLE) VALUES
('Bear Brand Powdered Milk', 'Fortified powdered milk drink', 'Nestle', 'Dairy', 'Piece', 69.50, 150, 1, 'Nestle Philippines', 'Philippines', '2025-03-01', '2024-08-20 10:30:00', '2024-08-21 09:00:00', TRUE),
('Datu Puti Vinegar', 'Natural white vinegar', 'Datu Puti', 'Condiments', 'Bottle', 35.75, 200, 2, 'NutriAsia', 'Philippines', '2026-02-01', '2024-08-15 11:30:00', '2024-08-16 09:00:00', TRUE),
('Century Tuna Flakes in Oil', 'Tuna flakes in vegetable oil', 'Century', 'Canned Goods', 'Can', 45.25, 350, 1, 'Century Pacific', 'Philippines', '2026-06-15', '2024-08-10 09:45:00', '2024-08-11 09:00:00', TRUE),
('Lucky Me Pancit Canton', 'Instant dry noodles', 'Lucky Me', 'Instant Noodles', 'Pack', 8.75, 500, 2, 'Monde Nissin Corporation', 'Philippines', '2025-10-12', '2024-08-05 08:30:00', '2024-08-06 09:00:00', TRUE),
('Selecta Fortified Milk', 'Fresh milk fortified with iron', 'Selecta', 'Dairy', 'Liter', 80.00, 100, 1, 'RFM Corporation', 'Philippines', '2024-11-15', '2024-08-12 07:30:00', '2024-08-13 09:00:00', TRUE),
('Nescafe Classic Coffee', 'Classic instant coffee', 'Nescafe', 'Beverages', 'Pack', 96.00, 120, 3, 'Nestle Philippines', 'Philippines', '2026-01-01', '2024-08-18 06:30:00', '2024-08-19 09:00:00', TRUE),
('Yakult Probiotic Drink', 'Fermented milk drink', 'Yakult', 'Beverages', 'Bottle', 52.50, 250, 4, 'Yakult Philippines', 'Philippines', '2024-10-01', '2024-08-16 05:30:00', '2024-08-17 09:00:00', TRUE),
('Rebisco Crackers', 'Cream filled crackers', 'Rebisco', 'Snacks', 'Pack', 15.00, 400, 2, 'Republic Biscuit Corporation', 'Philippines', '2025-12-01', '2024-08-09 04:30:00', '2024-08-10 09:00:00', TRUE),
('Champion Detergent Powder', 'Ultra-concentrated detergent powder', 'Champion', 'Household', 'Kilo', 65.00, 300, 5, 'ACS Manufacturing Corporation', 'Philippines', '2025-05-01', '2024-08-02 03:30:00', '2024-08-03 09:00:00', TRUE),
('Surf Fabric Conditioner', 'Fabric conditioner with lavender scent', 'Surf', 'Household', 'Bottle', 35.00, 200, 6, 'Unilever Philippines', 'Philippines', '2025-06-01', '2024-08-14 02:30:00', '2024-08-15 09:00:00', TRUE),
('Brown Sugar', 'Natural brown sugar', NULL, 'Grocery', 'Kilo', 50.00, 150, 7, 'Racini Agro Industrial Corporation', 'Philippines', '2025-03-01', '2024-08-19 01:30:00', '2024-08-20 09:00:00', TRUE),
('M.Y. San Skyflakes Crackers', 'Plain crackers', 'M.Y. San', 'Snacks', 'Pack', 18.00, 350, 3, 'Monde Nissin Corporation', 'Philippines', '2025-08-01', '2024-08-17 00:30:00', '2024-08-18 09:00:00', TRUE),
('Energen Instant Cereal', 'Instant cereal drink', 'Energen', 'Breakfast', 'Pack', 7.00, 500, 2, 'PT Mayora Indah Tbk', 'Indonesia', '2025-12-31', '2024-08-13 08:00:00', '2024-08-14 09:00:00', TRUE),
('Silver Swan Soy Sauce', 'Soy sauce with natural flavor', 'Silver Swan', 'Condiments', 'Bottle', 29.00, 180, 4, 'NutriAsia', 'Philippines', '2026-07-01', '2024-08-22 12:00:00', '2024-08-23 09:00:00', TRUE),
('C2 Green Tea', 'Green tea with lemon flavor', 'C2', 'Beverages', 'Bottle', 20.00, 300, 5, 'Universal Robina Corporation', 'Philippines', '2024-12-01', '2024-08-11 11:00:00', '2024-08-12 09:00:00', TRUE),
('Purefoods Corned Beef', 'Premium corned beef', 'Purefoods', 'Canned Goods', 'Can', 75.00, 250, 6, 'San Miguel Food and Beverage', 'Philippines', '2025-01-15', '2024-08-21 10:00:00', '2024-08-22 09:00:00', TRUE),
('Gatorade Blue Bolt', 'Electrolyte sports drink', 'Gatorade', 'Beverages', 'Bottle', 50.00, 100, 3, 'Pepsi-Cola Products Philippines', 'Philippines', '2025-05-01', '2024-08-24 09:00:00', '2024-08-25 09:00:00', TRUE),
('Happy Toothpaste', 'Fluoride toothpaste', 'Happy', 'Personal Care', 'Tube', 25.00, 300, 8, 'Happy Products', 'Philippines', '2025-08-01', '2024-08-25 08:00:00', '2024-08-26 09:00:00', TRUE),
('Ligo Sardines in Tomato Sauce', 'Sardines in tomato sauce', 'Ligo', 'Canned Goods', 'Can', 23.00, 200, 2, 'A. Tung Chingco Manufacturing', 'Philippines', '2025-11-15', '2024-08-04 07:00:00', '2024-08-05 09:00:00', TRUE),
('Pampanga’s Best Tocino', 'Frozen sweet cured pork', 'Pampanga’s Best', 'Frozen Goods', 'Kilo', 200.00, 75, 7, 'Pampanga’s Best Inc.', 'Philippines', '2024-09-20', '2024-08-01 06:00:00', '2024-08-02 09:00:00', TRUE),
('Natori Cheese Balls', 'Cheese-flavored snacks', 'Natori', 'Snacks', 'Pack', 18.50, 400, 1, 'Natori Corporation', 'Japan', '2025-02-01', '2024-08-06 05:00:00', '2024-08-07 09:00:00', TRUE),
('Rexona Deo Lotion', 'Anti-perspirant lotion', 'Rexona', 'Personal Care', 'Bottle', 89.00, 100, 3, 'Unilever Philippines', 'Philippines', '2025-04-01', '2024-08-03 04:00:00', '2024-08-04 09:00:00', TRUE),
('Alaska Evaporated Milk', 'Rich and creamy evaporated milk', 'Alaska', 'Dairy', 'Can', 40.00, 300, 4, 'Alaska Milk Corporation', 'Philippines', '2025-09-01', '2024-08-26 03:00:00', '2024-08-27 09:00:00', TRUE),
('Calyx Detergent Bar', 'Stain remover detergent bar', NULL, 'Household', 'Piece', 15.00, 200, 6, 'ACS Manufacturing Corporation', 'Philippines', '2025-02-01', '2024-08-20 02:00:00', '2024-08-21 09:00:00', TRUE),
('Sakura Dishwashing Liquid', 'Lemon-scented dishwashing liquid', 'Sakura', 'Household', 'Bottle', 30.00, 150, 7, 'P.T. Wicaksana Overseas International', 'Indonesia', '2025-06-15', '2024-08-19 01:00:00', '2024-08-20 09:00:00', TRUE),
('Palmolive Naturals Shampoo', 'Anti-dandruff shampoo with conditioner', 'Palmolive', 'Personal Care', 'Bottle', 69.00, 200, 5, 'Colgate-Palmolive Philippines', 'Philippines', '2025-11-30', '2024-08-18 00:00:00', '2024-08-19 09:00:00', TRUE),
('Milo Chocolate Drink', 'Chocolate malt drink', 'Milo', 'Beverages', 'Pack', 10.00, 500, 1, 'Nestle Philippines', 'Philippines', '2026-05-01', '2024-08-14 11:00:00', '2024-08-15 09:00:00', TRUE),
('Red Ribbon Chocolate Cake', 'Moist chocolate cake', 'Red Ribbon', 'Bakery', 'Piece', 650.00, 10, 9, 'Red Ribbon Bakeshop', 'Philippines', '2024-09-30', '2024-08-12 10:00:00', '2024-08-13 09:00:00', TRUE),
('Clover Chips', 'Corn snacks with cheese flavor', 'Leslies', 'Snacks', 'Pack', 10.50, 300, 2, 'Leslie Corporation', 'Philippines', '2025-04-15', '2024-08-11 09:00:00', '2024-08-12 09:00:00', TRUE),
('Absolute Distilled Water', 'Purified bottled water', 'Absolute', 'Beverages', 'Bottle', 25.00, 600, 5, 'ARC Refreshments Corporation', 'Philippines', '2025-01-01', '2024-08-10 08:00:00', '2024-08-11 09:00:00', TRUE),
('Safeguard Soap', 'Anti-bacterial body soap', 'Safeguard', 'Personal Care', 'Piece', 29.00, 450, 8, 'Procter & Gamble Philippines', 'Philippines', '2025-02-01', '2024-08-09 07:00:00', '2024-08-10 09:00:00', TRUE),
('Green Cross Alcohol', '70% ethyl alcohol disinfectant', 'Green Cross', 'Personal Care', 'Bottle', 72.00, 300, 6, 'Green Cross Inc.', 'Philippines', '2025-12-01', '2024-08-08 06:00:00', '2024-08-09 09:00:00', TRUE),
('Del Monte Pineapple Juice', 'Sweetened pineapple juice', 'Del Monte', 'Beverages', 'Can', 30.00, 300, 3, 'Del Monte Philippines', 'Philippines', '2026-02-01', '2024-08-07 05:00:00', '2024-08-08 09:00:00', TRUE),
('Fita Biscuits', 'Classic salted biscuits', 'M.Y. San', 'Snacks', 'Pack', 8.00, 500, 1, 'Monde Nissin Corporation', 'Philippines', '2025-08-01', '2024-08-06 04:00:00', '2024-08-07 09:00:00', TRUE),
('Minola Cooking Oil', 'Coconut cooking oil', 'Minola', 'Grocery', 'Bottle', 85.00, 200, 5, 'San Pablo Manufacturing Corporation', 'Philippines', '2025-05-01', '2024-08-05 03:00:00', '2024-08-06 09:00:00', TRUE),
('Nestle Chuckie', 'Chocolate milk drink', 'Nestle', 'Beverages', 'Box', 20.00, 200, 7, 'Nestle Philippines', 'Philippines', '2024-10-01', '2024-08-04 02:00:00', '2024-08-05 09:00:00', TRUE),
('Choco Mucho Bar', 'Chocolate wafer bar', 'Choco Mucho', 'Snacks', 'Piece', 15.00, 300, 2, 'Republic Biscuit Corporation', 'Philippines', '2025-06-01', '2024-08-03 01:00:00', '2024-08-04 09:00:00', TRUE),
('Alaska Condensed Milk', 'Sweetened condensed milk', 'Alaska', 'Dairy', 'Can', 45.00, 150, 6, 'Alaska Milk Corporation', 'Philippines', '2025-08-01', '2024-08-02 00:00:00', '2024-08-03 09:00:00', TRUE),
('Mama Sita''s Oyster Sauce', 'Authentic Filipino oyster sauce', 'Mama Sita', 'Condiments', 'Bottle', 35.00, 180, 4, 'Mama Sita''s Holding Co.', 'Philippines', '2026-01-01', '2024-08-01 23:00:00', '2024-08-02 09:00:00', TRUE),
('Piattos Cheese', 'Thin potato crisps', 'Jack n Jill', 'Snacks', 'Pack', 17.00, 400, 5, 'Universal Robina Corporation', 'Philippines', '2025-07-01', '2024-08-28 22:00:00', '2024-08-29 09:00:00', TRUE),
('Maxx Candy', 'Menthol-flavored hard candy', 'Maxx', 'Snacks', 'Pack', 1.50, 1000, 7, 'Cavite Ideal International Manufacturing', 'Philippines', '2026-03-01', '2024-08-26 21:00:00', '2024-08-27 09:00:00', TRUE),
('Chippy BBQ Flavor', 'Barbecue-flavored corn chips', 'Jack n Jill', 'Snacks', 'Pack', 8.50, 500, 3, 'Universal Robina Corporation', 'Philippines', '2025-09-01', '2024-08-25 20:00:00', '2024-08-26 09:00:00', TRUE),
('Ariel Detergent Powder', 'Anti-stain detergent powder', 'Ariel', 'Household', 'Kilo', 75.00, 250, 8, 'Procter & Gamble Philippines', 'Philippines', '2025-03-01', '2024-08-24 19:00:00', '2024-08-25 09:00:00', TRUE),
('Star Margarine', 'Yellow margarine spread', 'Star', 'Grocery', 'Piece', 30.00, 200, 6, 'San Miguel Food and Beverage', 'Philippines', '2025-02-01', '2024-08-23 18:00:00', '2024-08-24 09:00:00', TRUE),
('Colgate Total Toothpaste', 'Complete care toothpaste', 'Colgate', 'Personal Care', 'Tube', 95.00, 150, 2, 'Colgate-Palmolive Philippines', 'Philippines', '2025-08-01', '2024-08-22 17:00:00', '2024-08-23 09:00:00', TRUE),
('Super Glue', 'All-purpose adhesive glue', NULL, 'Household', 'Tube', 25.00, 100, 3, 'Henkel Philippines', 'China', '2025-05-01', '2024-08-21 16:00:00', '2024-08-22 09:00:00', TRUE),
('Knorr Chicken Cubes', 'Chicken-flavored bouillon cubes', 'Knorr', 'Condiments', 'Pack', 20.00, 300, 1, 'Unilever Philippines', 'Philippines', '2025-11-01', '2024-08-20 15:00:00', '2024-08-21 09:00:00', TRUE),
('Filippo Berio Olive Oil', 'Extra virgin olive oil', 'Filippo Berio', 'Grocery', 'Bottle', 350.00, 100, 7, 'Filippo Berio Philippines', 'Italy', '2026-12-01', '2024-08-19 14:00:00', '2024-08-20 09:00:00', TRUE),
('Biogesic Tablets', 'Paracetamol tablets for fever and pain relief', 'Biogesic', 'Pharmaceutical', 'Box', 25.00, 200, 2, 'United Laboratories (Unilab)', 'Philippines', '2025-03-01', '2024-08-18 13:00:00', '2024-08-19 09:00:00', TRUE),
('Datu Puti Vinegar', 'Sukang Maasim - Filipino vinegar', 'Datu Puti', 'Condiments', 'Bottle', 15.00, 300, 4, 'NutriAsia Philippines', 'Philippines', '2025-01-01', '2024-08-17 12:00:00', '2024-08-18 09:00:00', TRUE),
('Silver Swan Soy Sauce', 'Filipino soy sauce for cooking', 'Silver Swan', 'Condiments', 'Bottle', 17.00, 400, 3, 'NutriAsia Philippines', 'Philippines', '2025-10-01', '2024-08-16 11:00:00', '2024-08-17 09:00:00', TRUE),
('Bench Body Spray', 'Body spray for men', 'Bench', 'Personal Care', 'Bottle', 120.00, 150, 8, 'Suyen Corporation', 'Philippines', '2026-04-01', '2024-08-15 10:00:00', '2024-08-16 09:00:00', TRUE),
('Lucky Me Pancit Canton', 'Instant noodles - original flavor', 'Lucky Me', 'Snacks', 'Pack', 7.00, 500, 5, 'Monde Nissin Corporation', 'Philippines', '2025-08-01', '2024-08-14 09:00:00', '2024-08-15 09:00:00', TRUE),
('Cobra Energy Drink', 'Energy drink with vitamins', 'Cobra', 'Beverages', 'Bottle', 25.00, 400, 6, 'Asia Brewery Incorporated', 'Philippines', '2024-12-01', '2024-08-13 08:00:00', '2024-08-14 09:00:00', TRUE),
('Happy Peanut Snack', 'Roasted peanuts', 'Happy', 'Snacks', 'Pack', 10.00, 300, 2, 'Rebisco Philippines', 'Philippines', '2025-09-01', '2024-08-12 07:00:00', '2024-08-13 09:00:00', TRUE),
('Selecta Ice Cream', 'Vanilla-flavored ice cream', 'Selecta', 'Frozen', 'Tub', 250.00, 50, 1, 'RFM Corporation', 'Philippines', '2024-12-01', '2024-08-11 06:00:00', '2024-08-12 09:00:00', TRUE),
('Oishi Prawn Crackers', 'Classic prawn-flavored crackers', 'Oishi', 'Snacks', 'Pack', 8.00, 400, 7, 'Liwayway Marketing Corporation', 'Philippines', '2025-11-01', '2024-08-10 05:00:00', '2024-08-11 09:00:00', TRUE),
('Johnson''s Baby Powder', 'Baby powder to prevent skin irritation', 'Johnson''s', 'Personal Care', 'Bottle', 42.00, 150, 4, 'Johnson & Johnson Philippines', 'Philippines', '2025-07-01', '2024-08-09 04:00:00', '2024-08-10 09:00:00', TRUE),
('Ligo Sardines', 'Sardines in tomato sauce', 'Ligo', 'Canned Goods', 'Can', 18.00, 600, 3, 'A. Tung Chingco Manufacturing Corporation', 'Philippines', '2026-01-01', '2024-08-08 03:00:00', '2024-08-09 09:00:00', TRUE),
('Nestle All-Purpose Cream', 'Cream for cooking and baking', 'Nestle', 'Dairy', 'Pack', 60.00, 300, 5, 'Nestle Philippines', 'Philippines', '2025-10-01', '2024-08-07 02:00:00', '2024-08-08 09:00:00', TRUE),
('Hapee Toothpaste', 'Toothpaste with cavity protection', 'Hapee', 'Personal Care', 'Tube', 32.00, 400, 6, 'Lamoiyan Corporation', 'Philippines', '2025-04-01', '2024-08-06 01:00:00', '2024-08-07 09:00:00', TRUE),
('Champion Detergent Bar', 'Laundry detergent bar', 'Champion', 'Household', 'Piece', 18.00, 250, 7, 'Peerless Products Manufacturing Corporation', 'Philippines', '2025-03-01', '2024-08-05 00:00:00', '2024-08-06 09:00:00', TRUE),
('Century Tuna', 'Tuna chunks in vegetable oil', 'Century Tuna', 'Canned Goods', 'Can', 35.00, 200, 8, 'Century Pacific Food Inc.', 'Philippines', '2025-06-01', '2024-08-04 23:00:00', '2024-08-05 09:00:00', TRUE),
('Danes Cheese Spread', 'Cheese spread for sandwiches', 'Danes', 'Dairy', 'Jar', 90.00, 100, 2, 'Angelica Bakeshop Corporation', 'Philippines', '2025-02-01', '2024-08-03 22:00:00', '2024-08-04 09:00:00', TRUE),
('Downy Fabric Softener', 'Fabric conditioner for clothes', 'Downy', 'Household', 'Bottle', 45.00, 300, 3, 'Procter & Gamble Philippines', 'Philippines', '2026-01-01', '2024-08-02 21:00:00', '2024-08-03 09:00:00', TRUE),
('Rebisco Crackers', 'Classic Filipino crackers', 'Rebisco', 'Snacks', 'Pack', 6.00, 700, 1, 'Republic Biscuit Corporation', 'Philippines', '2025-09-01', '2024-08-01 20:00:00', '2024-08-02 09:00:00', TRUE),
('Alaska Evaporated Milk', 'Evaporated milk for cooking', 'Alaska', 'Dairy', 'Can', 40.00, 300, 4, 'Alaska Milk Corporation', 'Philippines', '2025-12-01', '2024-07-31 19:00:00', '2024-08-01 09:00:00', TRUE),
('Fudgee Barr', 'Cream-filled chocolate cake bar', 'Fudgee Barr', 'Snacks', 'Piece', 12.00, 500, 2, 'Universal Robina Corporation', 'Philippines', '2025-08-01', '2024-07-30 18:00:00', '2024-07-31 09:00:00', TRUE),
('Greenwich Lasagna Supreme', 'Frozen lasagna ready-to-eat meal', 'Greenwich', 'Frozen', 'Tray', 190.00, 50, 5, 'Greenwich Pizza Corporation', 'Philippines', '2024-12-01', '2024-07-29 17:00:00', '2024-07-30 09:00:00', TRUE);