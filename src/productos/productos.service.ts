import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Productos } from './entities/producto.entity';
import { CreateProductoDto } from './dto/create-producto.dto';
import { UpdateProductoDto } from './dto/update-producto.dto';


@Injectable()
export class ProductosService {
  constructor(
    @InjectRepository(Productos)
    private productoRepo: Repository<Productos>,
  ) {}

  create(dto: CreateProductoDto) {
  const nuevo = this.productoRepo.create({
    nombre_producto: dto.nombre_producto,
    descripcion_producto: dto.descripcion_producto,
    precio: dto.precio,
    stock: dto.stock,
    categoria: { id_categoria: dto.categoriaId },
  });

  return this.productoRepo.save(nuevo);
}

  findAll() {
    return this.productoRepo.find({ relations: ['categoria'] });
  }

  findOne(id: number) {
    return this.productoRepo.findOne({
      where: { id_producto: id },
      relations: ['categoria'],
    });
  }

  update(id: number, dto: UpdateProductoDto) {
    return this.productoRepo.update({ id_producto: id }, dto);
  }

  remove(id: number) {
    return this.productoRepo.delete({ id_producto: id });
  }
}
