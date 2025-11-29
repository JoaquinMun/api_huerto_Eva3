import { IsNumber, IsString, IsDateString, IsArray, ValidateNested } from 'class-validator';
import { Type } from 'class-transformer';

export class DetalleVentaInput {
  @IsNumber()
  productoId: number;

  @IsNumber()
  cantidad: number;

  @IsNumber()
  subtotal: number;
}

export class CreateVentaDto {
  @IsNumber()
  usuarioId: number;

  @IsDateString()
  fecha_venta: string;

  @IsNumber()
  total: number;

  @IsString()
  estado: string;

  @IsString()
  metodo_pago: string;

  @IsArray()
  @ValidateNested({ each: true })
  @Type(() => DetalleVentaInput)
  detalles: DetalleVentaInput[];
}