import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  ManyToOne,
} from 'typeorm';

import { Productos } from 'src/productos/entities/producto.entity';
import { Ventas } from 'src/ventas/entities/venta.entity';

@Entity()
export class DetalleVenta {
  @PrimaryGeneratedColumn()
  id_detalle: number;

  @ManyToOne(() => Ventas, (venta) => venta.detalles)
  venta: Ventas;

  @ManyToOne(() => Productos, (producto) => producto.detalles)
  producto: Productos;

  @Column()
  cantidad: number;

  
  @Column()
  subtotal: number;
}
