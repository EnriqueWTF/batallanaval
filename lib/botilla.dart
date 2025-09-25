import 'dart:io';
import 'package:batallanaval/src/punto.dart';
import 'package:batallanaval/Elemento.dart';
enum TiposBarcos{bote,lancha,submarino,crucero,portaaviones}

enum DreccionesHacia{arriba,abajo,izquierda,derecha}


class barco{
final TiposBarcos tipo;
final DreccionesHacia direccion;
final Punto puntoIncial;
List<Elemento> _elementos =[];

barco({
  required this.tipo, 
  required this.puntoIncial, 
  required this.direccion,


  
  }){

  int cuantasVeces = mapaTamanos[tipo]!;
  int columna = puntoIncial.columna;
  int fila = puntoIncial.fila;
  while(cuantasVeces>0){

_elementos.add(
  Elemento(punto: Punto(columna: columna, fila: fila)
  ),


  );

  columna =columna+dcolumna[direccion]!;
  fila = fila+dfila[direccion]!;


    cuantasVeces--;
  }
  }

  }


  var mapaTamanos ={


    TiposBarcos.bote 1,
     TiposBarcos.lancha 2,
      TiposBarcos.submarino 3,
       TiposBarcos.crucero 4,
        TiposBarcos.portaaviones 5,
  }
  

  var dfila = {DreccionesHacia.abajo:1, 
  DreccionesHacia.arriba -1,
  DreccionesHacia.derecha 0,
  DreccionesHacia.izquierda 0,}

  var dcolumna= {DreccionesHacia.abajo:1,
   DreccionesHacia.arriba -1,
   DreccionesHacia.derecha 0,
   DreccionesHacia.izquierda 0,}


int get tamaño {
int get tamaño {
  
    switch (tipo) {
      case TiposBarcos.bote:
        return 1;
      case TiposBarcos.lancha:
        return 2;
      case TiposBarcos.submarino:
        return 3;
      case TiposBarcos.crucero:
        return 4;
      case TiposBarcos.portaaviones:
        return 5;
    }
  }

}

bool validarFlotilla(List<String> nombres) {
  if (_hayNombresRepetidos(nombres)) {
  return true;
    throw Exception('No se permiten nombres de barcos repetidos.');
  }
  if (_excedeTamanoMaximoFlotilla(nombres)) {
    throw Exception('La flotilla no puede tener más de 5 barcos.');
      return true;
  }
  return false;
}








bool _hayNombresRepetidos(List<String> nombres) {
  return nombres.length != nombres.toSet().length;
}

bool _excedeTamanoMaximoFlotilla(List<String> nombres) {
   const int maximoPermitido = 5;
  return nombres.length > maximoPermitido;
}




