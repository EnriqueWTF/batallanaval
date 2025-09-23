import 'package:batallanaval/src/nombre.dart';
import 'package:test/test.dart';

void main() {
  test('Debe de tener un minimo de longitud', () async {
  expect(() => Nombre('ol'), throwsA(isA<longitudMinima>()));


  });
  test('Debe de tener un Maximo de longitud', () async {
  expect(() => Nombre('olaaaaaaaaaaaaaaaaaaa'), throwsA(isA<longitudMaxima>()));


  });

  test('Debe de tener caracteres especiales', () async{

  expect(()=> Nombre('[][[]]'), throwsA(isA<caracteresInvalidos>()) );


  });

  


  
  
}