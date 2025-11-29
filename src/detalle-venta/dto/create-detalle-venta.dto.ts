import { IsNumber } from 'class-validator';

export class CreateDetalleVentaDto {
  @IsNumber()
  ventaId: number;

  @IsNumber()
  productoId: number;

  @IsNumber()
  cantidad: number;

  @IsNumber()
  subtotal: number;
}