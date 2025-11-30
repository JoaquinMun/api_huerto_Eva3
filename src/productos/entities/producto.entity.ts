import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  ManyToOne,
  OneToMany,
} from 'typeorm';

import { Categorias } from 'src/categorias/entities/categoria.entity';
import { DetalleVenta } from 'src/detalle-venta/entities/detalle-venta.entity';

@Entity()
export class Productos {
  @PrimaryGeneratedColumn()
  id_producto: number;

  @Column()
  nombre_producto: string;

  @Column()
  descripcion_producto: string;

  @Column()
  precio: number;

  @Column()
  stock: number;

  @ManyToOne(() => Categorias, (categoria) => categoria.productos)
  categoria: Categorias;

  // chatgpt me ayudo:D
  @OneToMany(() => DetalleVenta, (detalle) => detalle.producto)
  detalles: DetalleVenta[];
}
