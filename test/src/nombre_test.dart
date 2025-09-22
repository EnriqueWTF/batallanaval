import 'package:batallanaval/src/nombre.dart';
import 'package:test/test.dart';

void main() {
  test('Debe de tener un minimo de longitud', () async {
  expect(() => Nombre('ol'), throwsA(isA<longitudMinima>()));


  });
  
  
}