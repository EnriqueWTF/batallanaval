import 'package:batallanaval/src/jugador.dart';

class Nombre {

final String valor;

Nombre(this.valor){

  if (valor.length < 3) {
    throw longitudMinima();
  }
  if (valor.length > 20) {
    throw longitudMaxima();
  }
  if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(valor)) {
    throw caracteresInvalidos();
  }
}


}
class longitudMinima extends Error {

}
class longitudMaxima extends Error {

}
class caracteresInvalidos extends Error {

}





