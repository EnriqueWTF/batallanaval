import 'package:batallanaval/botilla.dart';
import 'package:test/test.dart';

void main() {
  group('hayNombresRepetidos', () {
    test('Debe devolver false si no hay nombres repetidos', () {
      final nombres = ['Portaaviones', 'Acorazado', 'Submarino',];
      expect(hayNombresRepetidos(nombres), isFalse);
   });
  



  });
}