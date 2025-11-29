import request from 'supertest';
import { server } from './setup';

describe('PRODUCTOS - E2E', () => {

  let productoId: number;

  it('POST /productos → crear producto', async () => {
    const res = await request(server)
      .post('/api/v1/productos')
      .send({
        nombre_producto: "Manzana",
        descripcion_producto: "Roja",
        precio: 500,
        stock: 10,
        categoriaId: 1
      })
      .expect(201);

    productoId = res.body.id_producto;
    expect(productoId).toBeDefined();
  });

  it('GET /productos → debe listar productos', async () => {
    const res = await request(server)
      .get('/api/v1/productos')
      .expect(200);

    expect(Array.isArray(res.body)).toBe(true);
  });

});