import 'dart:math';

import 'package:batallanaval/batallanaval.dart';
import 'package:test/test.dart';

void main() {


    setUp(() {
      // Additional setup goes here.
    });

    test('Al crearse debe marcarse creada', () {
      Partida partida = new Partida();
      expect(partida.estado, equals(Estado.creada));

    });

     test('Al crearse debe marcarse creada', () {
       final tablero = Tablero(10);
      expect(tablero.casillas.length, 10);
      

    });



    
  
}
