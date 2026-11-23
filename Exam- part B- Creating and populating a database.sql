part B-
Creating and populating a database:

CREATE TABLE televisions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    catalog_number TEXT NOT NULL UNIQUE,
    brand TEXT NOT NULL CHECK (brand IN ('Samsung', 'LG', 'Sony')),
    model TEXT NOT NULL,
    screen_size REAL NOT NULL CHECK (screen_size > 0),
    resolution TEXT NOT NULL CHECK (resolution IN ('4K', '8K', 'Full HD')),
    price REAL NOT NULL CHECK (price >= 0),
    stock_quantity INTEGER NOT NULL DEFAULT 0 CHECK (stock_quantity >= 0),
    release_year INTEGER NOT NULL CHECK (release_year >= 1990),
    smart_tv TEXT NOT NULL DEFAULT 'Yes' CHECK (smart_tv IN ('Yes', 'No')),
    os TEXT,
    panel_type TEXT NOT NULL CHECK (panel_type IN ('OLED', 'QLED', 'LED')),
    CHECK ((smart_tv = 'No' AND os IS NULL) OR (smart_tv = 'Yes' AND os IS NOT NULL))
);

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type) VALUES
('CAT-1001', 'Samsung', 'QN90C', 65, '4K', 6500.00, 12, 2023, 'Yes', 'Tizen', 'QLED'),
('CAT-1002', 'LG', 'C3', 55, '4K', 5200.50, 8, 2023, 'Yes', 'webOS', 'OLED'),
('CAT-1003', 'Sony', 'Bravia Basic', 43, 'Full HD', 1800.00, 20, 2021, 'No', NULL, 'LED');


































