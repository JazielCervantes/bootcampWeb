CREATE DATABASE IF NOT EXISTS Menu_restaurante;
USE Menu_restaurante;
CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    encargado VARCHAR(100)
);

CREATE TABLE platos (
    id_plato INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    dificultad ENUM('Fácil', 'Media', 'Difícil'),
    foto_url VARCHAR(255),
    precio DECIMAL(10,2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE ingredientes (
    id_ingrediente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    cantidad_actual DECIMAL(10,2),
    unidad_medida VARCHAR(20)
);

CREATE TABLE recetas (
    id_plato INT,
    id_ingrediente INT,
    cantidad_requerida DECIMAL(10,2),
    unidad_medida VARCHAR(20),
    PRIMARY KEY (id_plato, id_ingrediente),
    FOREIGN KEY (id_plato) REFERENCES platos(id_plato),
    FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id_ingrediente)
);

-- Datos de ejemplo: categorias (10)
INSERT INTO categorias (nombre, descripcion, encargado) VALUES
('Entradas', 'Platos pequeños para iniciar la comida', 'Carlos Ruiz'),
('Sopas', 'Preparaciones calientes a base de caldo', 'Ana Torres'),
('Ensaladas', 'Platos frescos con vegetales', 'Lucía Sánchez'),
('Carnes', 'Platos fuertes con proteína animal', 'Roberto Pérez'),
('Mariscos', 'Platos elaborados con productos del mar', 'Marisol Vega'),
('Pasta', 'Platos a base de pasta italiana', 'Daniel López'),
('Postres', 'Platos dulces para finalizar la comida', 'Laura Gómez'),
('Bebidas', 'Bebidas frías y calientes', 'Eduardo León'),
('Sandwiches', 'Preparaciones rápidas', 'Mario Hernández'),
('Especiales', 'Platos destacados del chef', 'Chef Arturo');

-- Datos de ejemplo: ingredientes (10)
INSERT INTO ingredientes (nombre, cantidad_actual, unidad_medida) VALUES
('Tomate', 500, 'gramos'),
('Cebolla', 300, 'gramos'),
('Lechuga', 10, 'piezas'),
('Pechuga de pollo', 5, 'kilogramos'),
('Carne molida', 4, 'kilogramos'),
('Camarón', 2, 'kilogramos'),
('Harina', 10, 'kilogramos'),
('Azúcar', 8, 'kilogramos'),
('Huevos', 120, 'piezas'),
('Queso rallado', 2, 'kilogramos');

-- Datos de ejemplo: platos (10)
INSERT INTO platos (nombre, descripcion, dificultad, foto_url, precio, id_categoria) VALUES
('Bruschetta', 'Pan tostado con tomate y ajo', 'Fácil', 'img/bruschetta.jpg', 95.00, 1),
('Sopa de Tomate', 'Sopa cremosa de tomate', 'Media', 'img/sopa_tomate.jpg', 120.00, 2),
('Ensalada César', 'Lechuga con pollo y aderezo', 'Fácil', 'img/cesar.jpg', 150.00, 3),
('Pollo a la parrilla', 'Pechuga marinada y asada', 'Media', 'img/pollo.jpg', 180.00, 4),
('Camarones al ajillo', 'Camarones salteados en ajo', 'Media', 'img/camarones.jpg', 220.00, 5),
('Spaghetti Bolognesa', 'Pasta con salsa de carne', 'Media', 'img/bolognesa.jpg', 160.00, 6),
('Tiramisú', 'Postre italiano clásico', 'Difícil', 'img/tiramisu.jpg', 130.00, 7),
('Limonada', 'Bebida fresca de limón', 'Fácil', 'img/limonada.jpg', 45.00, 8),
('Sándwich Club', 'Pan, pollo, jamón y vegetales', 'Fácil', 'img/club.jpg', 140.00, 9),
('Ribeye Especial', 'Corte premium del chef', 'Difícil', 'img/ribeye.jpg', 350.00, 10);

-- Datos de ejemplo: recetas (20)
INSERT INTO recetas (id_plato, id_ingrediente, cantidad_requerida, unidad_medida) VALUES
(1, 1, 50, 'gramos'),
(1, 2, 20, 'gramos'),
(1, 7, 30, 'gramos'),
(2, 1, 80, 'gramos'),
(2, 2, 30, 'gramos'),
(3, 3, 1, 'pieza'),
(3, 4, 100, 'gramos'),
(4, 4, 200, 'gramos'),
(4, 10, 30, 'gramos'),
(5, 6, 150, 'gramos'),
(5, 2, 20, 'gramos'),
(6, 5, 100, 'gramos'),
(6, 7, 50, 'gramos'),
(7, 8, 40, 'gramos'),
(7, 9, 2, 'piezas'),
(8, 1, 10, 'gramos'),
(9, 4, 50, 'gramos'),
(9, 3, 1, 'pieza'),
(10, 5, 300, 'gramos'),
(10, 10, 40, 'gramos');