-- -----------------------------------------------------
-- New Products - Added via V9 migration
-- -----------------------------------------------------

-- Books (category_id = 1)
INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (100, 'BOOK-TECH-2001', 'Mastering Spring Boot', 'A comprehensive guide to building production-ready applications with Spring Boot. Covers REST APIs, security, microservices, and cloud deployment. Includes hands-on projects to apply what you learn.', 'assets/images/products/books/book-luv2code-1001.png', 1, 50, 29.99, 1, NOW());

INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (101, 'BOOK-TECH-2002', 'Angular Complete Guide', 'Master Angular from the ground up. Learn components, services, routing, reactive forms, and RxJS. Build real-world applications with best practices and modern Angular patterns.', 'assets/images/products/books/book-luv2code-1003.png', 1, 75, 24.99, 1, NOW());

INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (102, 'BOOK-TECH-2003', 'AWS Cloud Practitioner', 'Your complete guide to AWS fundamentals. Covers compute, storage, networking, databases, and security. Perfect for developers and architects moving to the cloud.', 'assets/images/products/books/book-luv2code-1004.png', 1, 60, 19.99, 1, NOW());

INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (103, 'BOOK-TECH-2004', 'Docker and Kubernetes in Action', 'Learn containerization and orchestration from scratch. Deploy scalable applications with Docker, Kubernetes, and ECS. Includes CI/CD pipeline examples for modern DevOps workflows.', 'assets/images/products/books/book-luv2code-1006.png', 1, 40, 34.99, 1, NOW());

-- Coffee Mugs (category_id = 2)
INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (104, 'MUG-2001', 'Developer Fuel Mug', 'Start your day right with this premium ceramic mug. Holds 16oz of your favorite beverage. Dishwasher and microwave safe. Perfect gift for any developer or tech enthusiast.', 'assets/images/products/coffeemugs/coffeemug-luv2code-1001.png', 1, 100, 12.99, 2, NOW());

INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (105, 'MUG-2002', 'Code & Coffee Mug', 'The perfect companion for late-night coding sessions. High-quality ceramic construction with a comfortable handle. Keeps your drink warm longer so you can stay focused on your code.', 'assets/images/products/coffeemugs/coffeemug-luv2code-1002.png', 1, 100, 14.99, 2, NOW());

INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (106, 'MUG-2003', 'Full Stack Mug', 'Show off your full-stack skills with this sleek mug. Features a modern design and premium finish. Great for home, office, or as a gift for your favorite developer.', 'assets/images/products/coffeemugs/coffeemug-luv2code-1003.png', 1, 80, 11.99, 2, NOW());

-- Mouse Pads (category_id = 3)
INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (107, 'PAD-2001', 'XL Developer Desk Pad', 'Upgrade your workspace with this extra-large desk pad. Non-slip rubber base keeps it firmly in place. Smooth surface for precise mouse tracking. Fits full keyboard and mouse setup.', 'assets/images/products/mousepads/mousepad-luv2code-1003.png', 1, 60, 18.99, 3, NOW());

INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (108, 'PAD-2002', 'Cloud Native Mouse Pad', 'A durable mouse pad designed for the modern developer. Water-resistant surface and stitched edges ensure long-lasting performance. Compatible with all mouse types including optical and laser.', 'assets/images/products/mousepads/mousepad-luv2code-1004.png', 1, 90, 15.99, 3, NOW());

-- Luggage Tags (category_id = 4)
INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (109, 'LUGGAGETAG-2001', 'Traveler Pro Luggage Tag', 'Never lose your luggage again with this high-visibility tag. Made from premium durable plastic with a secure loop attachment. Includes a privacy cover for your personal information.', 'assets/images/products/luggagetags/luggagetag-luv2code-1002.png', 1, 200, 9.99, 4, NOW());

INSERT INTO products (id, sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES (110, 'LUGGAGETAG-2002', 'Adventure Luggage Tag', 'Built for the frequent traveler. Waterproof, scratch-resistant, and designed to withstand the toughest baggage handling. Stand out at the carousel with this unique tag.', 'assets/images/products/luggagetags/luggagetag-luv2code-1003.png', 1, 150, 11.99, 4, NOW());
