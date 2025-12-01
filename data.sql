-- Usuarios de prueba
--Ejecutar en Postman para crear usuarios insertandolos en xampp mysql no encripta la contraseña
--POST
http://localhost:3000/api/v1/auth/register
{
  "nombre": "Cliente Prueba",
  "email": "cliente@gmail.com",
  "password": "cliente123",
  "rol": "cliente"
}

{
  "nombre": "Empleado Prueba",
  "email": "empleado@gmail.com",
  "password": "empleado123",
  "rol": "empleado"
}

  { "nombre": "Valentina Rojas", "email": "valentina.rojas@gmail.com", "password": "valentina123", "rol": "cliente" },
  { "nombre": "Sebastián Muñoz", "email": "sebastian.munoz@gmail.com", "password": "sebastian123", "rol": "cliente" },
  { "nombre": "Camila Fernández", "email": "camila.fernandez@gmail.com", "password": "camila123", "rol": "cliente" },
  { "nombre": "Matías González", "email": "matias.gonzalez@gmail.com", "password": "matias123", "rol": "cliente" },
  { "nombre": "Isidora Pérez", "email": "isidora.perez@gmail.com", "password": "isidora123", "rol": "cliente" },
  { "nombre": "Francisca Riquelme", "email": "francisca.riquelme@gmail.com", "password": "francisca123", "rol": "cliente" }


--Pegar en SQL de xampp
INSERT INTO categorias (nombre_categoria, descripcion_categoria) VALUES
('Abarrotes', 'Productos básicos como arroz, fideos, legumbres, harina, azúcar y aceite'),
('Bebidas', 'Bebidas gaseosas, jugos, aguas minerales y energéticas'),
('Snacks', 'Papas fritas, ramitas, galletas, chocolates y confites'),
('Lácteos', 'Leche, yogures, mantequilla, quesos y otros derivados'),
('Carnes y Embutidos', 'Longanizas, salchichas, jamón, vienesas y carnes refrigeradas'),
('Panadería', 'Pan, hallullas, marraquetas, queques y productos horneados'),
('Artículos de Limpieza', 'Detergentes, cloro, esponjas, lavalozas y productos de aseo'),
('Higiene Personal', 'Shampoo, desodorante, jabón, pasta dental, papel higiénico'),
('Congelados', 'Helados, verduras congeladas, mariscos y productos listos'),
('Mascotas', 'Comida para perros y gatos, snacks y arena sanitaria'),
('Licores', 'Cervezas, vinos, piscos y otros alcoholes permitidos'),
('Frutas y Verduras', 'Productos frescos de estación'),
('Cigarros y Filtros', 'Cigarrillos, encendedores, fósforos'),
('Farmacia Básica', 'Medicamentos sin receta, curitas y analgésicos');


INSERT INTO productos (nombre_producto, descripcion_producto, precio, stock, categoriaIdCategoria) VALUES
('Arroz Grado 1 1kg', 
 'Arroz de alta calidad, ideal para preparaciones diarias como guisos, acompañamientos y comidas familiares. Se cocina de manera pareja y mantiene una textura suave y esponjosa, convirtiéndose en un básico indispensable en cualquier hogar.', 
 1200, 40, 1),

('Fideos Spaghetti 400g', 
 'Spaghetti de trigo de cocción rápida, perfectos para comidas rápidas y económicas. Mantienen su forma y consistencia al cocinarse, siendo ideales para combinar con salsas, carnes, verduras o simplemente con mantequilla.', 
 900, 50, 1),

('Coca-Cola 1.5L', 
 'Bebida gaseosa clásica de sabor cola, refrescante y reconocida mundialmente. Ideal para compartir en comidas familiares, celebraciones o simplemente para disfrutar en cualquier momento del día.', 
 1800, 25, 2),

('Papas Fritas Lays 140g', 
 'Papas fritas crujientes con un sabor irresistible, elaboradas con papas seleccionadas y fritas hasta obtener una textura perfecta. Son un snack ideal para compartir, ver una película o acompañar bebidas.', 
 1500, 35, 3),

('Leche Entera 1L', 
 'Leche líquida de sabor suave y textura cremosa, proveniente de vacas seleccionadas. Aporta calcio y vitaminas esenciales, siendo perfecta para el desayuno, preparaciones de cocina o el consumo diario.', 
 1100, 30, 4),

('Yoghurt Batido Frutilla 155g', 
 'Yoghurt cremoso con sabor a frutilla, elaborado con leche fresca y cultivos vivos. Es una opción ideal como snack saludable, acompañamiento del desayuno o colación para niños y adultos.', 
 650, 60, 4),

('Salchichas Vienesas Pack 12u', 
 'Tradicionales salchichas tipo vienesa, listas para cocinar a la plancha, al agua o en microondas. Tienen un sabor suave y una textura firme, ideales para hot dogs, completos u otras preparaciones rápidas.', 
 1700, 22, 5),

('Pan Hallulla Bolsa 10u', 
 'Pan fresco de textura suave y miga compacta, perfecto para el desayuno o la once. Su versatilidad permite acompañarlo con dulce, mantequilla, quesos o embutidos, siendo uno de los panes preferidos del consumo diario.', 
 1800, 15, 6),

('Detergente Líquido 1L', 
 'Detergente líquido concentrado que remueve manchas difíciles y deja un aroma agradable en la ropa. Rinde múltiples lavados y es compatible con lavadoras automáticas o lavado manual.', 
 2200, 18, 7),

('Shampoo Familiar 750ml', 
 'Shampoo de uso diario con fórmula suave que limpia profundamente el cabello y el cuero cabelludo. Deja una sensación fresca, un aroma agradable y un acabado sedoso, apto para toda la familia.', 
 2500, 20, 8),

('Helado de Vainilla 1L', 
 'Helado cremoso de vainilla elaborado con ingredientes de calidad. Ideal para postres, celebraciones o para disfrutar en días calurosos. Su textura suave y sabor clásico lo hacen un producto muy popular.', 
 3200, 12, 9),

('Comida para Perro 1kg', 
 'Alimento seco para perros adultos, formulado con nutrientes esenciales que contribuyen a la salud del pelaje, los dientes y la energía diaria. Su mezcla equilibrada lo convierte en una opción confiable para mascotas.', 
 2500, 14, 10),

('Cerveza Cristal Lata 350ml', 
 'Cerveza lager chilena de sabor suave, refrescante y fácil de beber. Ideal para compartir en reuniones, asados o simplemente para disfrutar bien fría después del trabajo.', 
 1000, 48, 11),

('Plátano 1kg', 
 'Fruta fresca de primera calidad, rica en potasio y de sabor naturalmente dulce. Es perfecta para consumir sola, en batidos o como parte de un desayuno saludable. Producto siempre presente en los hogares chilenos.', 
 1300, 20, 12),

('Encendedor Bic', 
 'Encendedor de alta duración, seguro y confiable, ideal para uso diario en el hogar. Fabricado con materiales resistentes y una llama estable, es uno de los productos más reconocidos del mercado.', 
 700, 40, 13),

('Aceite de Girasol 1L',
 'Aceite vegetal refinado ideal para freír, saltear y aderezar ensaladas. Sabor neutro y gran durabilidad.', 
 2200, 35, 1),

('Jugo de Naranja 1L',
 'Jugo natural de naranja, sin preservantes, ideal para el desayuno o para refrescarse en cualquier momento del día.', 
 1500, 40, 2),


('Queso Mantecoso 200g',
 'Queso semi-blando de sabor suave y cremoso, ideal para sándwiches, tablas o cocinar.', 
 1800, 30, 4),

('Jamón Cocido 250g',
 'Jamón de cerdo cocido, bajo en grasa, ideal para sándwiches y comidas rápidas.', 
 2200, 20, 5),

('Pan Integral 500g',
 'Pan integral rico en fibra, perfecto para desayunos saludables y sándwiches.', 
 1500, 25, 6),

('Detergente en Polvo 1kg',
 'Detergente concentrado para ropa, potente contra manchas difíciles y con aroma fresco.', 
 2000, 30, 7),

('Pasta Dental 100ml',
 'Pasta dental con flúor para prevenir caries y mantener dientes y encías saludables.', 
 900, 50, 8),

('Helado de Chocolate 1L',
 'Helado cremoso con intenso sabor a chocolate, ideal para postres y reuniones familiares.', 
 3200, 15, 9),

('Arena Sanitaria para Gatos 5kg',
 'Arena aglomerante y absorbente, mantiene el olor bajo control y fácil de limpiar.', 
 4500, 20, 10),

('Vino Tinto Cabernet Sauvignon 750ml',
 'Vino tinto chileno con cuerpo, ideal para acompañar carnes y cenas especiales.', 
 5500, 18, 11),

('Manzana Roja 1kg',
 'Fruta fresca, dulce y jugosa, perfecta para consumo directo o en preparaciones culinarias.', 
 2000, 30, 12),


('Paracetamol 500mg 10u',
 'Medicamento analgésico y antipirético, útil para aliviar dolores leves y fiebre.', 
 1200, 50, 14);







INSERT INTO ventas (fecha_venta, total, estado, metodo_pago, usuarioIdUsuario) VALUES
('2025-11-30 10:00:00', 9996, 'pendiente', 'efectivo', 1),
('2025-11-30 11:30:00', 13556, 'completada', 'efectivo', 2),
('2025-11-30 12:15:00', 5712, 'cancelada', 'efectivo', 3),
('2025-11-30 13:45:00', 18088, 'pendiente', 'efectivo', 4),
('2025-11-30 14:20:00', 13090, 'completada', 'efectivo', 5),
('2025-11-10 09:15:00', 7854, 'completada', 'efectivo', 1),
('2025-11-11 14:30:00', 12614, 'completada', 'efectivo', 2),
('2025-11-12 11:50:00', 11186, 'cancelada', 'efectivo', 3),
('2025-11-13 16:20:00', 9996, 'completada', 'efectivo', 4),
('2025-11-14 10:45:00', 13090, 'pendiente', 'efectivo', 5),
('2025-11-15 13:15:00', 6700, 'completada', 'efectivo', 6),
('2025-11-16 09:35:00', 11400, 'completada', 'efectivo', 7),
('2025-11-17 17:00:00', 8500, 'completada', 'efectivo', 8),
('2025-11-18 12:20:00', 9600, 'pendiente', 'efectivo', 1),
('2025-11-19 15:40:00', 11000, 'completada', 'efectivo', 2),
('2025-11-20 11:10:00', 7400, 'completada', 'efectivo', 3),
('2025-11-21 14:50:00', 10200, 'completada', 'efectivo', 4),
('2025-11-22 10:30:00', 5800, 'cancelada', 'efectivo', 5),
('2025-11-23 13:05:00', 8600, 'completada', 'efectivo', 6),
('2025-11-24 09:45:00', 9900, 'completada', 'efectivo', 7),
('2025-11-25 16:15:00', 12300, 'completada', 'efectivo', 8),
('2025-11-26 11:25:00', 4500, 'pendiente', 'efectivo', 1),
('2025-11-27 14:55:00', 13500, 'completada', 'efectivo', 2),
('2025-11-28 10:05:00', 10200, 'completada', 'efectivo', 3),
('2025-11-29 13:35:00', 8900, 'completada', 'efectivo', 4),
('2025-11-30 09:50:00', 15400, 'completada', 'efectivo', 5),
('2025-11-30 11:20:00', 7600, 'completada', 'efectivo', 6),
('2025-11-30 12:45:00', 8400, 'pendiente', 'efectivo', 7),
('2025-11-30 14:10:00', 11100, 'completada', 'efectivo', 8),
('2025-11-30 15:30:00', 9200, 'completada', 'efectivo', 1),
('2025-11-30 16:50:00', 12800, 'completada', 'efectivo', 2),
('2025-11-30 18:15:00', 8700, 'pendiente', 'efectivo', 3),
('2025-11-30 19:40:00', 9700, 'completada', 'efectivo', 4),
('2025-11-30 20:50:00', 10500, 'completada', 'efectivo', 5),
('2025-11-30 21:30:00', 6300, 'completada', 'efectivo', 6),
('2025-11-01 09:10:00', 7800, 'completada', 'efectivo', 1),
('2025-11-02 11:30:00', 9200, 'pendiente', 'efectivo', 2),
('2025-11-03 14:45:00', 5600, 'cancelada', 'efectivo', 3),
('2025-11-04 10:20:00', 11400, 'completada', 'efectivo', 4),
('2025-11-05 15:15:00', 13200, 'completada', 'efectivo', 5),
('2025-11-06 09:50:00', 8700, 'pendiente', 'efectivo', 6),
('2025-11-07 12:40:00', 10100, 'completada', 'efectivo', 7),
('2025-11-08 16:30:00', 9400, 'completada', 'efectivo', 8),
('2025-11-09 11:20:00', 7800, 'completada', 'efectivo', 1),
('2025-11-10 13:50:00', 12500, 'completada', 'efectivo', 2),
('2025-11-11 10:05:00', 6900, 'cancelada', 'efectivo', 3),
('2025-11-12 14:15:00', 11800, 'completada', 'efectivo', 4),
('2025-11-13 09:30:00', 9700, 'pendiente', 'efectivo', 5),
('2025-11-14 12:55:00', 8800, 'completada', 'efectivo', 6),
('2025-11-15 16:10:00', 10400, 'completada', 'efectivo', 7),
('2025-11-16 11:40:00', 8900, 'completada', 'efectivo', 8),
('2025-11-17 10:25:00', 9700, 'completada', 'efectivo', 1),
('2025-11-18 13:15:00', 11200, 'pendiente', 'efectivo', 2),
('2025-11-19 15:50:00', 8300, 'completada', 'efectivo', 3),
('2025-11-20 09:05:00', 9500, 'completada', 'efectivo', 4),
('2025-11-21 12:35:00', 10200, 'completada', 'efectivo', 5),
('2025-11-22 14:20:00', 7600, 'cancelada', 'efectivo', 6),
('2025-11-23 10:45:00', 11800, 'completada', 'efectivo', 7),
('2025-11-24 13:10:00', 12300, 'completada', 'efectivo', 8),
('2025-11-25 09:55:00', 8700, 'pendiente', 'efectivo', 1),
('2025-11-26 12:25:00', 9800, 'completada', 'efectivo', 2),
('2025-11-27 15:35:00', 9400, 'completada', 'efectivo', 3),
('2025-11-28 11:15:00', 10100, 'completada', 'efectivo', 4),
('2025-11-29 13:50:00', 8900, 'completada', 'efectivo', 5),
('2025-11-30 09:20:00', 15400, 'completada', 'efectivo', 6),
('2025-11-30 10:45:00', 7600, 'completada', 'efectivo', 7),
('2025-11-30 12:10:00', 8400, 'pendiente', 'efectivo', 8),
('2025-11-30 13:30:00', 11100, 'completada', 'efectivo', 1),
('2025-11-30 14:50:00', 9200, 'completada', 'efectivo', 2),
('2025-11-30 16:10:00', 12800, 'completada', 'efectivo', 3),
('2025-11-30 17:35:00', 8700, 'pendiente', 'efectivo', 4),
('2025-11-30 18:50:00', 9700, 'completada', 'efectivo', 5),
('2025-11-30 20:10:00', 10500, 'completada', 'efectivo', 6),
('2025-11-30 21:25:00', 6300, 'completada', 'efectivo', 7),
('2025-11-30 22:40:00', 11200, 'completada', 'efectivo', 8),
('2025-11-05 09:20:00', 8700, 'completada', 'efectivo', 1),
('2025-11-06 11:40:00', 9900, 'completada', 'efectivo', 2),
('2025-11-07 13:55:00', 11200, 'completada', 'efectivo', 3),
('2025-11-08 10:10:00', 10300, 'pendiente', 'efectivo', 4),
('2025-11-09 12:30:00', 9500, 'completada', 'efectivo', 5),
('2025-11-10 14:50:00', 10700, 'completada', 'efectivo', 6),
('2025-11-11 09:25:00', 8600, 'completada', 'efectivo', 7),
('2025-11-12 11:45:00', 12100, 'completada', 'efectivo', 8),
('2025-11-13 13:15:00', 9300, 'pendiente', 'efectivo', 1);






INSERT INTO detalle_venta (cantidad, subtotal, ventaIdVenta, productoIdProducto) VALUES
(2, 2400, 1, 1), (1, 1800, 1, 3),
(3, 2700, 2, 2), (2, 3000, 2, 4),
(1, 1100, 3, 5), (2, 1300, 3, 6),
(4, 4400, 4, 7), (2, 3200, 4, 8),
(3, 3300, 5, 9), (1, 2200, 5, 10),
(2, 1500, 6, 11), (3, 1800, 6, 12),
(1, 2200, 7, 13), (2, 3100, 7, 14),
(3, 2700, 8, 15), (1, 2000, 8, 16),
(2, 1800, 9, 17), (3, 2400, 9, 18),
(1, 2200, 10, 19), (2, 3300, 10, 20),
(3, 2900, 11, 21), (1, 1600, 11, 22),
(2, 2500, 12, 23), (3, 3100, 12, 24),
(1, 1800, 13, 25), (2, 2700, 13, 26),
(3, 3200, 14, 27), (1, 2400, 14, 1),
(2, 2200, 15, 2), (3, 2600, 15, 3),
(1, 3000, 16, 4), (2, 1500, 16, 5),
(3, 2900, 17, 6), (1, 3100, 17, 7),
(2, 2700, 18, 8), (3, 3200, 18, 9),
(1, 1800, 19, 10), (2, 2200, 19, 11),
(3, 2400, 20, 12), (1, 2500, 20, 13),
(2, 3100, 21, 14), (3, 3300, 21, 15),
(1, 2000, 22, 16), (2, 1800, 22, 17),
(3, 2700, 23, 18), (1, 2200, 23, 19),
(2, 3000, 24, 20), (3, 3100, 24, 21),
(1, 2600, 25, 22), (2, 2800, 25, 23),
(3, 3200, 26, 24), (1, 2400, 26, 25),
(2, 2700, 27, 26), (3, 3300, 27, 27),
(1, 2200, 28, 1), (2, 2500, 28, 2),
(3, 3100, 29, 3), (1, 3000, 29, 4),
(2, 2800, 30, 5), (3, 2900, 30, 6),
(2, 2400, 1, 1), (1, 1800, 1, 3),
(3, 2700, 2, 2), (2, 3000, 2, 4),
(1, 1100, 3, 5), (2, 1300, 3, 6),
(4, 4400, 4, 7), (2, 3200, 4, 8),
(3, 3300, 5, 9), (1, 2200, 5, 10),
(2, 1500, 6, 11), (3, 1800, 6, 12),
(1, 2200, 7, 13), (2, 3100, 7, 14),
(3, 2700, 8, 15), (1, 2000, 8, 16),
(2, 1800, 9, 17), (3, 2400, 9, 18),
(1, 2200, 10, 19), (2, 3300, 10, 20),
(3, 2900, 11, 21), (1, 1600, 11, 22),
(2, 2500, 12, 23), (3, 3100, 12, 24),
(1, 1800, 13, 25), (2, 2700, 13, 26),
(3, 3200, 14, 27), (1, 2400, 14, 1),
(2, 2200, 15, 2), (3, 2600, 15, 3),
(1, 3000, 16, 4), (2, 1500, 16, 5),
(3, 2900, 17, 6), (1, 3100, 17, 7),
(2, 2700, 18, 8), (3, 3200, 18, 9),
(1, 1800, 19, 10), (2, 2200, 19, 11),
(3, 2400, 20, 12), (1, 2500, 20, 13),
(2, 3100, 21, 14), (3, 3300, 21, 15),
(1, 2000, 22, 16), (2, 1800, 22, 17),
(3, 2700, 23, 18), (1, 2200, 23, 19),
(2, 3000, 24, 20), (3, 3100, 24, 21),
(1, 2600, 25, 22), (2, 2800, 25, 23),
(3, 3200, 26, 24), (1, 2400, 26, 25),
(2, 2700, 27, 26), (3, 3300, 27, 27),
(1, 2200, 28, 1), (2, 2500, 28, 2),
(3, 3100, 29, 3), (1, 3000, 29, 4),
(2, 2800, 30, 5), (3, 2900, 30, 6),
(1, 2000, 31, 7), (2, 2200, 31, 8),
(3, 2400, 32, 9), (1, 2600, 32, 10),
(2, 2800, 33, 11), (3, 3000, 33, 12),
(1, 3200, 34, 13), (2, 3400, 34, 14),
(3, 3600, 35, 15), (1, 3800, 35, 16),
(2, 4000, 36, 17), (3, 4200, 36, 18),
(1, 4400, 37, 19), (2, 4600, 37, 20),
(3, 4800, 38, 21), (1, 5000, 38, 22),
(2, 5200, 39, 23), (3, 5400, 39, 24),
(1, 5600, 40, 25), (2, 5800, 40, 26),
(3, 6000, 41, 27), (1, 6200, 41, 1),
(2, 6400, 42, 2), (3, 6600, 42, 3),
(1, 6800, 43, 4), (2, 7000, 43, 5),
(3, 7200, 44, 6), (1, 7400, 44, 7),
(2, 7600, 45, 8), (3, 7800, 45, 9),
(1, 8000, 46, 10), (2, 8200, 46, 11),
(3, 8400, 47, 12), (1, 8600, 47, 13),
(2, 8800, 48, 14), (3, 9000, 48, 15),
(1, 9200, 49, 16), (2, 9400, 49, 17),
(3, 9600, 50, 18), (1, 9800, 50, 19);






-- Script para corregir totales con 19% IVA
UPDATE ventas v
JOIN (
    SELECT ventaIdVenta, SUM(subtotal) AS suma_subtotales
    FROM detalle_venta
    GROUP BY ventaIdVenta
) dv ON v.id_venta = dv.ventaIdVenta
SET v.total = ROUND(dv.suma_subtotales * 1.19);


