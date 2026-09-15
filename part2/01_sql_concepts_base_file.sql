CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products; 

CREATE TABLE products(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL, 
    category TEXT NOT NULL, 
    price NUMERIC(10,2) NOT NULL CHECK(price >= 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK(stock >= 0),
    is_active BOOLEAN NOT NULL DEFAULT true, 
    sku TEXT UNIQUE, 
    description TEXT, 
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO products (name, category, price, stock, is_active, sku, description) VALUES 
('Quantum Laptop 15', 'Electronics', 1299.99, 45, true, 'SKU-LAP-Q15', 'High-performance laptop with 16GB RAM and 512GB SSD.'),
('Wireless Noise-Canceling Headphones', 'Electronics', 199.50, 120, true, 'SKU-AUD-WNC', 'Over-ear Bluetooth headphones with active noise cancellation.'),
('Ergonomic Mesh Office Chair', 'Furniture', 249.99, 15, true, 'SKU-FUR-EMC', 'Adjustable lumbar support chair with breathable mesh back.'),
('Stainless Steel Water Bottle', 'Kitchenware', 24.95, 300, true, 'SKU-KIT-SSW', 'Double-walled vacuum insulated bottle, keeps drinks cold for 24h.'),
('Mechanical Gaming Keyboard', 'Electronics', 89.99, 65, true, 'SKU-KEY-MGK', 'RGB backlit keyboard with tactile blue switches.'),
('Organic Cotton T-Shirt', 'Apparel', 19.99, 500, true, 'SKU-APP-OCT', '100% certified organic cotton crewneck tee.'),
('Smart Fitness Tracker', 'Electronics', 59.95, 0, false, 'SKU-FIT-SFT', 'Monitors heart rate, steps, and sleep patterns. Currently out of stock.'),
('Gourmet Coffee Beans (1kg)', 'Groceries', 34.00, 85, true, 'SKU-GRO-GCB', 'Premium dark roast Arabica whole bean coffee from Colombia.'),
('Anti-Slip Yoga Mat', 'Fitness', 29.99, 140, true, 'SKU-FIT-ASY', 'Eco-friendly 6mm thick exercise mat with alignment lines.'),
('LED Desk Lamp with USB Port', 'Furniture', 39.99, 40, true, 'SKU-FUR-LDL', 'Dimmable office lamp with 5 color modes and touch control.');


SELECT * FROM products;