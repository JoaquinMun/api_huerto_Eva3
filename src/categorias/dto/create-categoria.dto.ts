import { IsOptional, IsString } from 'class-validator';

export class CreateCategoriaDto {
  @IsString()
  nombre_categoria: string;

  @IsString()
  @IsOptional()
  descripcion_categoria?: string;
}