// ------------------------------
// 1) Variables de entorno (ANTES de cargar AppModule)
// ------------------------------
process.env.NODE_ENV = 'test';
process.env.DB_HOST = '127.0.0.1';
process.env.DB_PORT = '3307';
process.env.DB_USERNAME = 'root';
process.env.DB_PASSWORD = '';
process.env.DB_NAME = 'test_db_e2e';

import { Test, TestingModule } from '@nestjs/testing';
import { INestApplication, ValidationPipe } from '@nestjs/common';
import { AppModule } from '../src/app.module';
import { DataSource } from 'typeorm';

export let app: INestApplication;
export let server: any;

beforeAll(async () => {
  // ------------------------------
  // Crear módulo de pruebas
  // ------------------------------
  const moduleFixture: TestingModule = await Test.createTestingModule({
    imports: [AppModule],
  }).compile();

  // ------------------------------
  // Crear aplicación NestJS
  // ------------------------------
  app = moduleFixture.createNestApplication();
  app.setGlobalPrefix('api/v1');

  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      forbidNonWhitelisted: false,
      transform: true,
    }),
  );

  await app.init();
  server = app.getHttpServer();

 
  // conexión a la base de datos
  const dataSource = moduleFixture.get<DataSource>(DataSource);


  // Limpiar tablas (en el orden correcto para evitar FK errors)
  await dataSource.query('SET FOREIGN_KEY_CHECKS = 0;');
  await dataSource.query('TRUNCATE TABLE detalle_venta;');
  await dataSource.query('TRUNCATE TABLE ventas;');
  await dataSource.query('TRUNCATE TABLE productos;');
  await dataSource.query('TRUNCATE TABLE categorias;');
  await dataSource.query('TRUNCATE TABLE usuarios;');
  await dataSource.query('SET FOREIGN_KEY_CHECKS = 1;');

  // Crear usuario base porque venta y dellate exigen una id de usuario
  await dataSource.query(`
  INSERT INTO usuarios (id_usuario, nombre, email, contrasena, rol)
  VALUES (1, 'Usuario Test', 'test@correo.com', '123456', 'admin');
  `);

  // Crear categoría base porque un producto exige una categoria
  await dataSource.query(`
  INSERT INTO categorias (id_categoria, nombre_categoria, descripcion_categoria)
  VALUES (1, 'Categoria Test', 'Usada para pruebas');
  `);

  //Producto porque una venta exige un producto existente
await dataSource.query(`
  INSERT INTO productos (id_producto, nombre_producto, descripcion_producto, precio, stock, categoriaIdCategoria)
  VALUES (1, 'Producto Test', 'Para pruebas', 500, 100, 1);
`);

}, 30000);

afterAll(async () => {
  await app?.close();
});