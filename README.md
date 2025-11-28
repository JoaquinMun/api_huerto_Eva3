# 1. Clonar el repositorio
git clone https://github.com/JoaquinMun/api_huerto_Eva3.git


# NestJS CLI (si no está instalado)
npm i -g @nestjs/cli

# Dependencias principales del proyecto
npm install

# TypeORM + MySQL
npm install typeorm mysql2 @nestjs/typeorm

# Dotenv para variables de entorno
npm install dotenv

# Validación y DTOs
npm install class-validator class-transformer

# Swagger (documentación automática)
npm install @nestjs/swagger swagger-ui-express

# Para compilar y levantar el proyecto
npm install --save-dev ts-node typescript @types/node

#OJO

DB_TYPE=mysql
DB_HOST=127.0.0.1
DB_PORT=3307   # o 3306 según tu XAMPP
DB_USERNAME=root
DB_PASSWORD=
DB_NAME=huerto_db
PORT=3000
NODE_ENV=development

#Levantar el servidor Ejecuta:

npm run start:dev

#Si todo está OK deberías ver:

Aplicación corriendo en: http://localhost:3000
Swagger UI: http://localhost:3000/docs





Estructura 
src/
 ├── app.module.ts
 ├── main.ts
 ├── usuarios/
 │     ├── usuarios.module.ts
 │     ├── usuarios.service.ts
 │     ├── usuarios.controller.ts
 │     └── entities/usuario.entity.ts
 ├── productos/
 ├── categorias/
 ├── ventas/
 └── detalle-venta/

.gitignore
.env  (NO subir)
package.json
nest-cli.json
tsconfig.json
