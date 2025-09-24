import 'package:batallanaval/botilla.dart';
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
 
  });
}