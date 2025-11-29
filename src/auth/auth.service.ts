import { Injectable, UnauthorizedException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import * as bcrypt from 'bcrypt';
import { UsuariosService } from 'src/usuarios/usuarios.service';

@Injectable()
export class AuthService {
  constructor(
    private readonly usuariosService: UsuariosService,
    private readonly jwtService: JwtService,
  ) {}


  async register(data: any) {
  const { nombre, email, password, rol } = data;

  const hashed = await bcrypt.hash(password, 10);

  return await this.usuariosService.create({
    nombre,
    email,
    password: hashed,
    rol,
  });
}

  // Validar credenciales
  async validateUser(email: string, pass: string) {
    const user = await this.usuariosService.findByEmail(email);

    if (!user) {
      throw new UnauthorizedException('Credenciales inválidas');
    }

    const isMatch = await bcrypt.compare(pass, user.password);
    if (!isMatch) {
      throw new UnauthorizedException('Credenciales inválidas');
    }

    // Retornar usuario sin password
    const { password, ...rest } = user;
    return rest;
  }

  // Login validar y generar token
  async login(email: string, password: string) {
    const user = await this.validateUser(email, password);

    const payload = {
      sub: user.id_usuario,
      email: user.email,
      rol: user.rol,
    };

    return {
      access_token: this.jwtService.sign(payload),
    };
  }
}