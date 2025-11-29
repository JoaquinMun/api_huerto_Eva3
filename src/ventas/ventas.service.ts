import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Ventas } from './entities/venta.entity';
import { DetalleVenta } from 'src/detalle-venta/entities/detalle-venta.entity';
import { CreateVentaDto } from './dto/create-venta.dto';
import { UpdateVentaDto } from './dto/update-venta.dto';

@Injectable()
export class VentasService {
  constructor(
    @InjectRepository(Ventas)
    private ventasRepo: Repository<Ventas>,

    @InjectRepository(DetalleVenta)
    private detalleRepo: Repository<DetalleVenta>,
  ) {}

  async create(dto: CreateVentaDto) {
    // chat me ayudo 
    const venta = this.ventasRepo.create({
      fecha_venta: dto.fecha_venta,
      total: dto.total,
      estado: dto.estado,
      metodo_pago: dto.metodo_pago,
      usuario: { id_usuario: dto.usuarioId },
    });

    const ventaGuardada = await this.ventasRepo.save(venta);

    // chat me ayudo
    for (const det of dto.detalles) {
      const detalle = this.detalleRepo.create({
        venta: { id_venta: ventaGuardada.id_venta },
        producto: { id_producto: det.productoId },
        cantidad: det.cantidad,
        subtotal: det.subtotal,
      });

      await this.detalleRepo.save(detalle);
    }

    // chatgt me ayudo
    return this.ventasRepo.findOne({
      where: { id_venta: ventaGuardada.id_venta },
      relations: ['usuario', 'detalles', 'detalles.producto'],
    });
  }

  findAll() {
    return this.ventasRepo.find({
      relations: ['usuario', 'detalles', 'detalles.producto'],
    });
  }

  findOne(id: number) {
    return this.ventasRepo.findOne({
      where: { id_venta: id },
      relations: ['usuario', 'detalles', 'detalles.producto'],
    });
  }

  update(id: number, dto: UpdateVentaDto) {
    return this.ventasRepo.update({ id_venta: id }, dto);
  }

  remove(id: number) {
    return this.ventasRepo.delete({ id_venta: id });
  }
}