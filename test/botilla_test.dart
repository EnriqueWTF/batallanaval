import 'dart:io';
import 'package:batallanaval/src/punto.dart';
import 'package:batallanaval/Elemento.dart';

enum TiposBarcos{bote,lancha,submarino,crucero,portaaviones}

enum DreccionesHacia{arriba,abajo,izquierda,derecha}


class Barco{
final TiposBarcos tipo;
final DreccionesHacia direccion;
final Punto puntoIncial;
final List<Elemento> _elementos =[];

List<Elemento> get elementos => _elementos;

Barco({
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

  int get tamaño => mapaTamanos[tipo]!; // Getter 'tamaño' simplificado y dentro de la clase

  }


  var mapaTamanos ={
    TiposBarcos.bote: 1,
     TiposBarcos.lancha: 2,
      TiposBarcos.submarino: 3,
       TiposBarcos.crucero: 4,
        TiposBarcos.portaaviones: 5,
  };
  

  var dfila = {
    DreccionesHacia.abajo: 1,
    DreccionesHacia.arriba: -1,
    DreccionesHacia.derecha: 0,
    DreccionesHacia.izquierda: 0,
    };

  var dcolumna= {
    DreccionesHacia.abajo:0, // Corregido a 0 para no cambiar columna al ir abajo
    DreccionesHacia.arriba: 0, // Corregido a 0 para no cambiar columna al ir arriba
    DreccionesHacia.derecha: 1,
    DreccionesHacia.izquierda: -1,
    };


bool validarFlotilla(List<String> nombres) {
  if (_hayNombresRepetidos(nombres)) {
    return false;
  }
  if (_excedeTamanoMaximoFlotilla(nombres)) {
    return false;
  }
  return true;
}






bool _hayNombresRepetidos(List<String> nombres) {
  return nombres.length != nombres.toSet().length;
}

bool _excedeTamanoMaximoFlotilla(List<String> nombres) {
   const int maximoPermitido = 5;
  return nombres.length > maximoPermitido;
}