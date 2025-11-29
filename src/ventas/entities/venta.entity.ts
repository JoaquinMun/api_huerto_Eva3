import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  ManyToOne,
  OneToMany,
} from 'typeorm';

import { Usuarios } from 'src/usuarios/entities/usuario.entity';
import { DetalleVenta } from 'src/detalle-venta/entities/detalle-venta.entity';

@Entity()
export class Ventas {
  @PrimaryGeneratedColumn()
  id_venta: number;

  @ManyToOne(() => Usuarios, (usuario) => usuario.ventas)
  usuario: Usuarios;

  @Column({ type: 'timestamp', default: () => 'CURRENT_TIMESTAMP' })
  fecha_venta: Date;

  @Column()
  total: number;

  @Column({
    type: 'enum',
    enum: ['pendiente', 'completada', 'cancelada'],
  })
  estado: string;

  @Column()
  metodo_pago: string;

  @OneToMany(() => DetalleVenta, (detalle) => detalle.venta, { cascade: true })
  detalles: DetalleVenta[];
}