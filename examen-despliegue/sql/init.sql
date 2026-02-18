CREATE DATABASE IF NOT EXISTS componentes_db;
USE componentes_db;
CREATE TABLE IF NOT EXISTS componentes (
 id INT AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL,
 tipo VARCHAR(50) NOT NULL,
 precio DECIMAL(10,2) NOT NULL
);
INSERT INTO componentes (nombre, tipo, precio) VALUES
('Intel Core i9-14900K', 'Procesador', 589.99),
('Intel Core i7-14700K', 'Procesador', 379.99),
('Intel Core i5-14600K', 'Procesador', 249.99),
('AMD Ryzen 9 7950X', 'Procesador', 699.99),
('AMD Ryzen 7 7700X', 'Procesador', 349.99),
('AMD Ryzen 5 7600X', 'Procesador', 229.99),
('NVIDIA GeForce RTX 4090', 'Tarjeta Grafica', 1899.99),
('NVIDIA GeForce RTX 4070 Ti', 'Tarjeta Grafica', 799.99),
('NVIDIA GeForce RTX 4060', 'Tarjeta Grafica', 299.99),
('AMD Radeon RX 7900 XTX', 'Tarjeta Grafica', 999.99),
('AMD Radeon RX 7700 XT', 'Tarjeta Grafica', 449.99),
('Corsair Vengeance 32GB DDR5 6000MHz', 'Memoria RAM', 129.99),
('Kingston Fury Beast 16GB DDR5 5200MHz', 'Memoria RAM', 74.99),
('G.Skill Trident Z5 64GB DDR5 6400MHz', 'Memoria RAM', 249.99),
('Crucial 16GB DDR4 3200MHz', 'Memoria RAM', 44.99),
('Samsung 990 Pro 2TB NVMe M.2', 'Almacenamiento', 189.99),
('WD Black SN850X 1TB NVMe M.2', 'Almacenamiento', 109.99),
('Seagate Barracuda 4TB HDD', 'Almacenamiento', 89.99),
('Samsung 870 EVO 1TB SATA SSD', 'Almacenamiento', 79.99),
('ASUS ROG Maximus Z790 Hero', 'Placa Base', 599.99),
('MSI MAG B650 Tomahawk WiFi', 'Placa Base', 229.99),
('Gigabyte Z790 Aorus Elite AX', 'Placa Base', 299.99),
('Corsair RM1000x 1000W 80+ Gold', 'Fuente Alimentacion', 179.99),
('be quiet! Straight Power 850W Platinum', 'Fuente Alimentacion', 149.99),
('EVGA SuperNOVA 750W 80+ Gold', 'Fuente Alimentacion', 109.99),
('Noctua NH-D15 Cooler CPU', 'Refrigeracion', 99.99),
('Corsair iCUE H150i Elite LCD 360mm', 'Refrigeracion', 259.99),
('be quiet! Dark Rock Pro 4', 'Refrigeracion', 79.99);