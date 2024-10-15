void main() {
  saudacoes("Adilson");
  saudacoes("Thayná", false, '*');
  saudacoes2("Adilson");
  saudacoes2("Thayná", sep: "-", mostrarAgora: true );
}

void saudacoes(String nome, [bool mostrarAgora = true, sep = "-"]) { //opcionais posicionais
  print(sep * 20);
  print("Saudacoes de $nome");
  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
}

void saudacoes2(String nome, {bool mostrarAgora = true, sep = "-"}) { //opcionais nomeados
  print(sep * 20);
  print("Saudacoes de $nome");
  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
