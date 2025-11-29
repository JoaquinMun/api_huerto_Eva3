import request from 'supertest';
import { server } from './setup';

describe('VENTAS - E2E', () => {

  let ventaId: number;

  it('POST /ventas → crear venta con detalles', async () => {
    const res = await request(server)
      .post('/api/v1/ventas')
      .send({
        usuarioId: 1,
        fecha_venta: "2025-11-29T15:00:00",
        total: 1500,
        estado: "pendiente",
        metodo_pago: "efectivo",
        detalles: [
          {
            productoId: 1,
            cantidad: 3,
            subtotal: 1500
          }
        ]
      })
      .expect(201);

    ventaId = res.body.id_venta;
    expect(ventaId).toBeDefined();
  });

  it('GET /ventas → debe listar ventas', async () => {
    const res = await request(server)
      .get('/api/v1/ventas')
      .expect(200);

    expect(Array.isArray(res.body)).toBe(true);
  });

});
