void main() {
  saudacoes("Adilson", cliente: "Jonas", corpo: () {
    print("Pao de alho");
  });
  saudacoes("Thayná", sep: "-", mostrarAgora: true, corpo: funcao);
}

void saudacoes(String nome,
    {bool mostrarAgora = true,
    sep = "-",
    String? cliente,
    required Function corpo}) {
  corpo();
  print(sep * 20);
  print("Saudacoes de $nome");
  if (cliente != null) {
    print("seja bem vindo ${cliente.toUpperCase()}");
  }
  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
}

void funcao() {
  print("Ola 1 ");
  print("Ola 2 ");
  print("Ola 3 ");
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
