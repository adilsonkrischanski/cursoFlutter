void main() {
  saudacoes("Adilson", cliente: "Jonas");
  saudacoes("Thayná", sep: "-", mostrarAgora: true);
}

void saudacoes(String nome,
  {bool mostrarAgora = true, sep = "-", String? cliente}
  ){
  print(sep * 20);
  print("Saudacoes de $nome");
  if (cliente != null) {
    print("seja bem vindo ${cliente.toUpperCase()}");
  }
  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
