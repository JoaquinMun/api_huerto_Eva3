import { Injectable } from '@nestjs/common';
import { CreateUsuarioDto } from './dto/create-usuario.dto';
import { UpdateUsuarioDto } from './dto/update-usuario.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Usuarios } from './entities/usuario.entity';
import * as bcrypt from 'bcrypt';

@Injectable()
export class UsuariosService {
  constructor(
    @InjectRepository(Usuarios)
    private readonly userRepository: Repository<Usuarios>,
  ) {}

  // Crear usuario con contraseña encriptada
  async create(createUsuarioDto: CreateUsuarioDto) {
    const salt = 10;

    const hashedPassword = await bcrypt.hash(
      createUsuarioDto.password,
      salt,
    );

    const nuevoUsuario = this.userRepository.create({
      ...createUsuarioDto,
      password: hashedPassword,
    });

    return await this.userRepository.save(nuevoUsuario);
  }
    
  async findByEmail(email: string) {
  return this.userRepository.findOneBy({ email });
  }

  findAll() {
    return this.userRepository.find();
  }

  findOne(id: number) {
    return this.userRepository.findOneBy({ id_usuario: id });
  }

  async update(id: number, updateUsuarioDto: UpdateUsuarioDto) {
  return this.userRepository.update({ id_usuario: id }, updateUsuarioDto);
  }

  async remove(id: number) {
    return this.userRepository.delete(id);
  }
}