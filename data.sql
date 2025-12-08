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







-- Insertar 25 ventas con fechas entre el 28/11/2025 y 12/12/2025, solo efectivo
INSERT INTO ventas (fecha_venta, total, estado, metodo_pago, usuarioIdUsuario) VALUES
-- Noviembre 2025
('2025-11-28 09:15:00', 0, 'completada', 'efectivo', 3),
('2025-11-28 14:30:00', 0, 'completada', 'efectivo', 4),
('2025-11-29 11:45:00', 0, 'completada', 'efectivo', 5),
('2025-11-29 16:20:00', 0, 'completada', 'efectivo', 6),
('2025-11-30 18:10:00', 0, 'completada', 'efectivo', 7),
('2025-11-30 20:05:00', 0, 'completada', 'efectivo', 8),

-- Diciembre 2025
('2025-12-01 10:15:00', 0, 'completada', 'efectivo', 1),
('2025-12-01 12:30:00', 0, 'completada', 'efectivo', 2),
('2025-12-02 15:45:00', 0, 'completada', 'efectivo', 3),
('2025-12-02 17:20:00', 0, 'completada', 'efectivo', 4),
('2025-12-03 19:30:00', 0, 'completada', 'efectivo', 5),
('2025-12-04 08:45:00', 0, 'completada', 'efectivo', 6),
('2025-12-04 13:15:00', 0, 'completada', 'efectivo', 7),
('2025-12-05 16:40:00', 0, 'completada', 'efectivo', 8),
('2025-12-05 18:25:00', 0, 'pendiente', 'efectivo', 1),
('2025-12-06 11:10:00', 0, 'completada', 'efectivo', 2),
('2025-12-06 14:50:00', 0, 'completada', 'efectivo', 3),
('2025-12-07 10:30:00', 0, 'completada', 'efectivo', 4),
('2025-12-08 12:45:00', 0, 'completada', 'efectivo', 5),
('2025-12-09 15:20:00', 0, 'pendiente', 'efectivo', 6),
('2025-12-10 17:35:00', 0, 'completada', 'efectivo', 7),
('2025-12-10 19:15:00', 0, 'completada', 'efectivo', 8),
('2025-12-11 09:40:00', 0, 'completada', 'efectivo', 1),
('2025-12-11 13:25:00', 0, 'completada', 'efectivo', 2),
('2025-12-12 16:10:00', 0, 'completada', 'efectivo', 3);

-- Insertar detalle_venta para todas las ventas
  INSERT INTO detalle_venta (cantidad, subtotal, ventaIdVenta, productoIdProducto) VALUES
  -- Venta 1 (28/11 - Mañana)
  (2, 0, 1, 1),   -- Arroz 2kg
  (1, 0, 1, 3),   -- Coca-Cola 1.5L
  (1, 0, 1, 5),   -- Leche 1L
  (1, 0, 1, 8),   -- Pan Hallulla

  -- Venta 2 (28/11 - Tarde)
  (3, 0, 2, 4),   -- Papas Fritas 3 bolsas
  (2, 0, 2, 13),  -- Cerveza 2 latas
  (1, 0, 2, 15),  -- Encendedor

  -- Venta 3 (29/11 - Mañana)
  (1, 0, 3, 6),   -- Yoghurt
  (2, 0, 3, 8),   -- Pan Hallulla 2 bolsas
  (1, 0, 3, 14),  -- Plátano 1kg
  (1, 0, 3, 27),  -- Paracetamol

  -- Venta 4 (29/11 - Tarde)
  (1, 0, 4, 7),   -- Salchichas
  (1, 0, 4, 11),  -- Helado Vainilla
  (2, 0, 4, 13),  -- Cerveza 2 latas

  -- Venta 5 (30/11 - Noche)
  (1, 0, 5, 9),   -- Detergente Líquido
  (1, 0, 5, 10),  -- Shampoo
  (1, 0, 5, 12),  -- Comida Perro
  (1, 0, 5, 25),  -- Vino Tinto

  -- Venta 6 (30/11 - Noche)
  (3, 0, 6, 13),  -- Cerveza 3 latas
  (2, 0, 6, 4),   -- Papas Fritas 2 bolsas
  (1, 0, 6, 26),  -- Manzana Roja

  -- Venta 7 (01/12 - Mañana)
  (1, 0, 7, 1),   -- Arroz
  (1, 0, 7, 2),   -- Fideos
  (1, 0, 7, 5),   -- Leche
  (1, 0, 7, 16),  -- Aceite

  -- Venta 8 (01/12 - Mediodía)
  (2, 0, 8, 3),   -- Coca-Cola 2 botellas
  (1, 0, 8, 17),  -- Jugo Naranja
  (1, 0, 8, 18),  -- Queso Mantecoso

  -- Venta 9 (02/12 - Tarde)
  (1, 0, 9, 19),  -- Jamón Cocido
  (1, 0, 9, 20),  -- Pan Integral
  (2, 0, 9, 22),  -- Pasta Dental 2 unidades

  -- Venta 10 (02/12 - Tarde)
  (1, 0, 10, 11),  -- Helado Vainilla
  (1, 0, 10, 23),  -- Helado Chocolate
  (1, 0, 10, 24),  -- Arena Gatos

  -- Venta 11 (03/12 - Noche)
  (4, 0, 11, 13),  -- Cerveza 4 latas
  (2, 0, 11, 4),   -- Papas Fritas 2 bolsas
  (1, 0, 11, 14),  -- Plátano

  -- Venta 12 (04/12 - Mañana)
  (2, 0, 12, 6),   -- Yoghurt 2 unidades
  (1, 0, 12, 8),   -- Pan Hallulla
  (1, 0, 12, 27),  -- Paracetamol

  -- Venta 13 (04/12 - Mediodía)
  (1, 0, 13, 9),   -- Detergente Líquido
  (1, 0, 13, 10),  -- Shampoo
  (1, 0, 13, 21),  -- Detergente Polvo

  -- Venta 14 (05/12 - Tarde)
  (3, 0, 14, 13),  -- Cerveza 3 latas
  (1, 0, 14, 25),  -- Vino Tinto
  (1, 0, 14, 26),  -- Manzana Roja

  -- Venta 15 (05/12 - Noche - Pendiente)
  (1, 0, 15, 1),   -- Arroz
  (1, 0, 15, 5),   -- Leche
  (1, 0, 15, 14),  -- Plátano

  -- Venta 16 (06/12 - Mañana)
  (2, 0, 16, 2),   -- Fideos 2 packs
  (1, 0, 16, 3),   -- Coca-Cola
  (1, 0, 16, 7),   -- Salchichas

  -- Venta 17 (06/12 - Tarde)
  (1, 0, 17, 11),  -- Helado Vainilla
  (1, 0, 17, 12),  -- Comida Perro
  (1, 0, 17, 24),  -- Arena Gatos

  -- Venta 18 (07/12 - Mañana)
  (1, 0, 18, 16),  -- Aceite
  (1, 0, 18, 17),  -- Jugo Naranja
  (1, 0, 18, 18),  -- Queso
  (1, 0, 18, 19),  -- Jamón

  -- Venta 19 (08/12 - Mediodía)
  (2, 0, 19, 13),  -- Cerveza 2 latas
  (1, 0, 19, 20),  -- Pan Integral
  (1, 0, 19, 22),  -- Pasta Dental

  -- Venta 20 (09/12 - Tarde - Pendiente)
  (1, 0, 20, 23),  -- Helado Chocolate
  (2, 0, 20, 27),  -- Paracetamol 2 cajas

  -- Venta 21 (10/12 - Tarde)
  (1, 0, 21, 9),   -- Detergente Líquido
  (1, 0, 21, 10),  -- Shampoo
  (1, 0, 21, 21),  -- Detergente Polvo
  (1, 0, 21, 22),  -- Pasta Dental

  -- Venta 22 (10/12 - Noche)
  (3, 0, 22, 13),  -- Cerveza 3 latas
  (1, 0, 22, 4),   -- Papas Fritas
  (1, 0, 22, 15),  -- Encendedor

  -- Venta 23 (11/12 - Mañana)
  (1, 0, 23, 1),   -- Arroz
  (1, 0, 23, 6),   -- Yoghurt
  (1, 0, 23, 8),   -- Pan Hallulla
  (1, 0, 23, 14),  -- Plátano

  -- Venta 24 (11/12 - Mediodía)
  (1, 0, 24, 11),  -- Helado Vainilla
  (1, 0, 24, 23),  -- Helado Chocolate
  (1, 0, 24, 25),  -- Vino Tinto

  -- Venta 25 (12/12 - Tarde)
  (2, 0, 25, 13),  -- Cerveza 2 latas
  (1, 0, 25, 26),  -- Manzana Roja
  (1, 0, 25, 27),  -- Paracetamol
  (1, 0, 25, 5);   -- Leche

-- Ahora actualizamos los subtotales en detalle_venta (precio * cantidad)
UPDATE detalle_venta dv
JOIN productos p ON dv.productoIdProducto = p.id_producto
SET dv.subtotal = dv.cantidad * p.precio;

-- Finalmente actualizamos los totales en ventas (suma de subtotales * 1.19)
UPDATE ventas v
JOIN (
    SELECT ventaIdVenta, SUM(subtotal) AS suma_subtotales
    FROM detalle_venta
    GROUP BY ventaIdVenta
) dv_sum ON v.id_venta = dv_sum.ventaIdVenta
SET v.total = ROUND(dv_sum.suma_subtotales * 1.19);
