import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Ventas } from './entities/venta.entity';
import { DetalleVenta } from 'src/detalle-venta/entities/detalle-venta.entity';
import { VentasService } from './ventas.service';
import { VentasController } from './ventas.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Ventas, DetalleVenta])],
  controllers: [VentasController],
  providers: [VentasService],
})
export class VentasModule {}
