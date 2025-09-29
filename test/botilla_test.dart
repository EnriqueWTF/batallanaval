import 'package:batallanaval/botilla.dart';
import 'package:batallanaval/src/punto.dart';
import 'package:test/test.dart';

void main() {
  group('Validación de Flotilla', () {
    test('Debe devolver true si la flotilla es válida', () {
      final barco1 = Barco(
        tipo: TiposBarcos.bote,
        puntoIncial: Punto(columna: 1, fila: 1),
        direccion: DreccionesHacia.derecha,
      );
      final barco2 = Barco(
        tipo: TiposBarcos.lancha,
        puntoIncial: Punto(columna: 3, fila: 1), 
        direccion: DreccionesHacia.derecha,
      );
      final barco3 = Barco(
        tipo: TiposBarcos.submarino,
        puntoIncial: Punto(columna: 5, fila: 1),
        direccion: DreccionesHacia.abajo,
      );
      final flotilla = [barco1, barco2, barco3];
      expect(validarFlotilla(flotilla), isTrue);
    });

    test('Debe devolver false si hay nombres de barcos repetidos', () {
      final barco1 = Barco(
        tipo: TiposBarcos.bote,
        puntoIncial: Punto(columna: 1, fila: 1),
        direccion: DreccionesHacia.derecha,
      );
      final barco2 = Barco(
        tipo: TiposBarcos.bote, 
        puntoIncial: Punto(columna: 3, fila: 1),
        direccion: DreccionesHacia.derecha,
      );
      final flotilla = [barco1, barco2];
      expect(validarFlotilla(flotilla), isFalse);
    });

    test('Debe devolver false si la flotilla excede el tamaño máximo (5 barcos)', () {
      final barco1 = Barco(tipo: TiposBarcos.bote, puntoIncial: Punto(columna: 1, fila: 1), direccion: DreccionesHacia.derecha);
      final barco2 = Barco(tipo: TiposBarcos.lancha, puntoIncial: Punto(columna: 3, fila: 1), direccion: DreccionesHacia.derecha);
      final barco3 = Barco(tipo: TiposBarcos.submarino, puntoIncial: Punto(columna: 5, fila: 1), direccion: DreccionesHacia.derecha);
      final barco4 = Barco(tipo: TiposBarcos.crucero, puntoIncial: Punto(columna: 7, fila: 1), direccion: DreccionesHacia.derecha);
      final barco5 = Barco(tipo: TiposBarcos.portaaviones, puntoIncial: Punto(columna: 9, fila: 1), direccion: DreccionesHacia.derecha);
      final barco6 = Barco(tipo: TiposBarcos.bote, puntoIncial: Punto(columna: 11, fila: 1), direccion: DreccionesHacia.derecha); // Sexto barco

      final flotilla = [barco1, barco2, barco3, barco4, barco5, barco6];
      expect(validarFlotilla(flotilla), isFalse);
    });

    test('Debe devolver false si los barcos están superpuestos', () {
      final barco1 = Barco(
        tipo: TiposBarcos.bote,
        puntoIncial: Punto(columna: 1, fila: 1),
        direccion: DreccionesHacia.derecha,
      );
      final barco2 = Barco(
        tipo: TiposBarcos.lancha,
        puntoIncial: Punto(columna: 1, fila: 1),
        direccion: DreccionesHacia.derecha,
      );
      final flotilla = [barco1, barco2];
      expect(validarFlotilla(flotilla), isFalse);
    });

}