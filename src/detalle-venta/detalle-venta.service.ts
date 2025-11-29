import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { DetalleVenta } from './entities/detalle-venta.entity';
import { CreateDetalleVentaDto } from './dto/create-detalle-venta.dto';
import { UpdateDetalleVentaDto } from './dto/update-detalle-venta.dto';

@Injectable()
export class DetalleVentaService {
  constructor(
    @InjectRepository(DetalleVenta)
    private detalleRepo: Repository<DetalleVenta>,
  ) {}

  create(dto: CreateDetalleVentaDto) {
    const nuevo = this.detalleRepo.create(dto);
    return this.detalleRepo.save(nuevo);
  }

  findAll() {
    return this.detalleRepo.find({ relations: ['venta', 'producto'] });
  }

  findOne(id: number) {
    return this.detalleRepo.findOne({
      where: { id_detalle: id },
      relations: ['venta', 'producto'],
    });
  }

  update(id: number, dto: UpdateDetalleVentaDto) {
    return this.detalleRepo.update({ id_detalle: id }, dto);
  }

  remove(id: number) {
    return this.detalleRepo.delete({ id_detalle: id });
  }
}
