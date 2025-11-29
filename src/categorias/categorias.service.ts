import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Categorias } from './entities/categoria.entity';
import { CreateCategoriaDto } from './dto/create-categoria.dto';
import { UpdateCategoriaDto } from './dto/update-categoria.dto';

@Injectable()
export class CategoriasService {
  constructor(
    @InjectRepository(Categorias)
    private categoriaRepo: Repository<Categorias>,
  ) {}

  create(dto: CreateCategoriaDto) {
    const nueva = this.categoriaRepo.create(dto);
    return this.categoriaRepo.save(nueva);
  }

  findAll() {
    return this.categoriaRepo.find({ relations: ['productos'] });
  }

  findOne(id: number) {
    return this.categoriaRepo.findOne({
      where: { id_categoria: id },
      relations: ['productos'],
    });
  }

  update(id: number, dto: UpdateCategoriaDto) {
    return this.categoriaRepo.update({ id_categoria: id }, dto);
  }

  remove(id: number) {
    return this.categoriaRepo.delete({ id_categoria: id });
  }
}