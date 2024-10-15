void main() {
  try {
    int resultado = 100 ~/ 0; // divisao interira
    print(resultado);
  } on UnsupportedError{
    print("caiu aqui");
  } catch(e) {
    print(e);
  }
  print("final");
}
