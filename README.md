# 📘 Instalación del Proyecto — API Huerto EVA3

## 1️⃣ Clonar el repositorio

```
git clone https://github.com/JoaquinMun/api_huerto_Eva3.git
cd api_huerto_Eva3
```

---

## 2️⃣ Instalar NestJS CLI (si no está instalado)

```
npm install -g @nestjs/cli
```

---

## 3️⃣ Instalar dependencias del proyecto

```
npm install
```

---

## 4️⃣ Dependencias adicionales

### 📦 TypeORM + MySQL

```
npm install typeorm mysql2 @nestjs/typeorm
```

### 🔐 Autenticación (JWT + Passport)

```
npm install @nestjs/jwt passport-jwt @nestjs/passport passport jsonwebtoken
```

### 🔧 Variables de entorno

```
npm install dotenv
```

### 📚 DTOs + Validación

```
npm install class-validator class-transformer
```

### 📄 Swagger (Documentación automática)

```
npm install @nestjs/swagger swagger-ui-express
```

### 🛠️ Dependencias de desarrollo

```
npm install --save-dev ts-node typescript @types/node
```

---

## 5️⃣ Configurar archivo `.env`

⚠️ **No subir este archivo a GitHub.**

Ejemplo:

```
DB_TYPE=mysql
DB_HOST=127.0.0.1
DB_PORT=3307
DB_USERNAME=root
DB_PASSWORD=
DB_NAME=huerto_db

PORT=3000
NODE_ENV=development

JWT_SECRET=super_secret_key
JWT_EXPIRES_IN=3600s
```

---

## 6️⃣ Levantar el servidor

```
npm run start:dev
```

---

## 7️⃣ Verificación

Si todo está OK, la aplicación correrá en:

* API → [http://localhost:3000](http://localhost:3000)
* Swagger UI → [http://localhost:3000/docs](http://localhost:3000/docs)

---

## 📁 Estructura del proyecto

```
src/
 ├── app.module.ts
 ├── main.ts
 ├── auth/
 │    ├── auth.module.ts
 │    ├── auth.service.ts
 │    ├── auth.controller.ts
 │    ├── strategies/jwt.strategy.ts
 │    └── guards/jwt-auth.guard.ts
 │
 ├── usuarios/
 │    ├── usuarios.module.ts
 │    ├── usuarios.service.ts
 │    └── usuarios.controller.ts
 │
 ├── entities/
 │    ├── usuario.entity.ts
 │    ├── productos/
 │    ├── categorias/
 │    ├── ventas/
 │    └── detalle-venta/
```

---

Si necesitas agregar iconos, colores, badges o imágenes, ¡dímelo y lo hago aún más pro! 🚀
