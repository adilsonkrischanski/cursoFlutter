void main() {
  String nome = funcao2(3) ?? "Nao Informado ";
  print(nome);
}

String? funcao() => "Daniel".toUpperCase();

String? funcao2(int x) {
  if (x > 10) {
    return "Ola mundo ".toUpperCase();
  }
  return null; // pode ser omitido
}
