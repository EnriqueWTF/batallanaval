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
        puntoIncial: Punto(columna: 3, fila: 5), 
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
  }