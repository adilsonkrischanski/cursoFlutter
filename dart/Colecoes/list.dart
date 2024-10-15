void main() {
  List listagenerica = ["Adilson", 'Krischanski', 10]; // dinamyc tipe
  List<String> nomes = ["Adilson", 'Krischanski'];
  int tam = nomes.length;
  print(tam);
  print("$listagenerica $nomes");

  nomes.add("pao de queijo");
  listagenerica.addAll(nomes);
  print("$listagenerica $nomes");

  for (int i = 0; i < listagenerica.length - 1; i++) {
    print(listagenerica[i]);
  }

  for (String nome in nomes) {
    print(nome.toUpperCase());
  }

  nomes.forEach((nome){
    print(nome);
  });
}
