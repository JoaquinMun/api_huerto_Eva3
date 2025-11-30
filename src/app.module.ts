import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfigModule } from '@nestjs/config';

import { join } from 'path';

import { ProductosModule } from './productos/productos.module';
import { UsuariosModule } from './usuarios/usuarios.module';
import { CategoriasModule } from './categorias/categorias.module';
import { VentasModule } from './ventas/ventas.module';
import { DetalleVentaModule } from './detalle-venta/detalle-venta.module';
import { AuthModule } from './auth/auth.module';

import { Usuarios } from './usuarios/entities/usuario.entity';
import { Productos } from './productos/entities/producto.entity';
import { Categorias } from './categorias/entities/categoria.entity';
import { Ventas } from './ventas/entities/venta.entity';
import { DetalleVenta } from './detalle-venta/entities/detalle-venta.entity';
import { AppController } from './app.controller';
import { AppService } from './app.service';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),

    TypeOrmModule.forRoot({
      type: 'mysql',
      host: process.env.DB_HOST,
      port: parseInt(process.env.DB_PORT ?? '3306'),
      username: process.env.DB_USERNAME,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME,
      entities: [Usuarios, Productos, Categorias, Ventas, DetalleVenta],
      dropSchema: process.env.NODE_ENV === 'test',
      synchronize: true,
    }),

    AuthModule,
    ProductosModule,
    UsuariosModule,
    CategoriasModule,
    VentasModule,
    DetalleVentaModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
