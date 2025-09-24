import 'dart:io';
import 'package:batallanaval/src/punto.dart';
import 'package:batallanaval/src/Elemento';
enum TiposBarcos{bote,lancha,submarino,crucero,portaaviones}

enum DreccionesHacia{arriba,abajo,izquierda,derecha}

class barco{
final TiposBarcos tipo;
final DreccionesHacia direccion;
final Punto puntoIncial;
List<Elemeto> _elementos =[];

barco({
  required this.tipo, 
  required this.puntoIncial, 
  required this.direccion
  });


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




