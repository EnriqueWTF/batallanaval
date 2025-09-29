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

  int get tamano => mapaTamanos[tipo]!;

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
    DreccionesHacia.abajo:0,
    DreccionesHacia.arriba: 0,
    DreccionesHacia.derecha: 1,
    DreccionesHacia.izquierda: -1,
    };


bool validarFlotilla(List<Barco> barcos) { 
  if (_hayNombresRepetidos(barcos.map((b) => b.tipo.toString()).toList())) {
    return false;
  }
  if (_excedeTamanoMaximoFlotilla(barcos.map((b) => b.tipo.toString()).toList())) {
    return false;
  }

  if (_estanBarcosCerca(barcos)) {
    return false;
  }
  return true;
}


bool _estanBarcosCerca(List<Barco> barcos) {
  for (int i = 0; i < barcos.length; i++) {
    for (int j = i + 1; j < barcos.length; j++) {
      for (var elemento1 in barcos[i].elementos) {
      for (var elemento2 in barcos[j].elementos) {
       if ((elemento1.punto.columna - elemento2.punto.columna).abs() <= 1 &&
          (elemento1.punto.fila - elemento2.punto.fila).abs() <= 1) {
          return true; 
         }
     }
      }
    }
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