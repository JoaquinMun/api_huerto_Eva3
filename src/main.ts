import { NestFactory } from '@nestjs/core';
import { ValidationPipe } from '@nestjs/common';
import { AppModule } from './app.module';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  app.setGlobalPrefix('api/v1');

  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      forbidNonWhitelisted: true,
      transform: true,
    }),
  );

  app.enableCors({
  origin: 'http://localhost:5173',
  credentials: true,
  });

  // SWAGGER
  const config = new DocumentBuilder()
    .setTitle('API Productos')
    .setDescription('Documentación y pruebas de la API de productos')
    .setVersion('1.0.0')
    .addBearerAuth()
    .build();

  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('docs', app, document, {
    swaggerOptions: { persistAuthorization: true },
  });

  const port = process.env.PORT || 3000;
  await app.listen(port);

  console.log('Aplicación corriendo en: http://localhost:' + port);
  console.log('Swagger UI:              http://localhost:' + port + '/docs');
  console.log('CROOS: http://localhost:5173:');
}

bootstrap();