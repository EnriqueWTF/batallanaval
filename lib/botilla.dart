class Flotilla {

}
bool hayNombresRepetidos(List<String> nombres) {

  final Set<String> nombresVistos = {};

  for (final nombre in nombres) {

    if (!nombresVistos.add(nombre)) {
      return true; 
    }
  }


  return false;
}


bool hayNombresRepetidosSimple(List<String> nombres) {
  return nombres.length != nombres.toSet().length;
}