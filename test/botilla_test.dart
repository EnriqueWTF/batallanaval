import 'package:batallanaval/botilla.dart';
import 'package:batallanaval/src/punto.dart';
import 'package:test/test.dart';

void main() {
  group('hayNombresRepetidos', () {
    test('Debe devolver false si no hay nombres repetidos', () {
      final nombres = ['Portaaviones', 'Acorazado', 'Submarino','Submarino',];
      expect(validarFlotilla  (nombres), isFalse);
   });
   test('La flotilla dede ser maximo de 5 barcos', () {
      final nombres = ['Portaaviones', 'Acorazado', 'Submarino','a','b',];
      expect(validarFlotilla(nombres), isFalse);
      
   });
 


  test('Barco portaaviones', () {
    final miBarco = barco(
      tipo: TiposBarcos.portaaviones,
      puntoIncial: Punto(columna: 1, fila: 1),
      direccion: DreccionesHacia.derecha,
    );
      expect(miBarco.tamaño, 5);
      
   });
  });
}