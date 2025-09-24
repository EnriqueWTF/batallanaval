import 'dart:math';
import 'package:batallanaval';
import 'package:test/test.dart';

void main() {
  test('', () {

    Punto p1 = Punto(columna: 1, fila: 1);
    Punto p2 = Punto(columna: 2, fila: 1);
    expect(p1.distancia(p2),p2.disctancia(p1));
  });


}