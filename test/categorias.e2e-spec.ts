import request from 'supertest';
import { server } from './setup';

describe('CATEGORIAS - E2E', () => {

  let categoriaId: number;

  it('POST /categorias → crear categoría', async () => {
    const res = await request(server)
      .post('/api/v1/categorias')
      .send({
        nombre_categoria: 'Frutas',
        descripcion_categoria: 'Categoria de frutas'
      })
      .expect(201);

    categoriaId = res.body.id_categoria;
    expect(categoriaId).toBeDefined();
  });

  it('GET /categorias → debe listar categorías', async () => {
    const res = await request(server)
      .get('/api/v1/categorias')
      .expect(200);

    expect(Array.isArray(res.body)).toBe(true);
  });

});