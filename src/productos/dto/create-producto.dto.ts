import { IsNumber, IsString } from 'class-validator';

export class CreateProductoDto {
  @IsString()
  nombre_producto: string;

  @IsString()
  descripcion_producto: string;

  @IsNumber()
  precio: number;

  @IsNumber()
  stock: number;

  @IsNumber()
  categoriaId: number;
}