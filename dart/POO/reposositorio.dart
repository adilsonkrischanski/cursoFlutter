abstract class ReposositorioPessoas {
  void adicionar();
  void apagar();
  String ler(int n);
}

class ReposositorioPessoasLocal implements ReposositorioPessoas {
  void adicionar() {
    print("Adicionado");
  }

  void apagar() {
    print("Apagado");
  }

  String ler(int n) {
    return "voce escolheu ler $n";
  }
}


class ReposositorioPessoasRemoto implements ReposositorioPessoas {
  void adicionar() {
    print("Adicionado");
  }

  void apagar() {
    print("Apagado");
  }

  String ler(int n) {
    return "voce escolheu ler $n";
  }
}

void main() {
  ReposositorioPessoas repo = ReposositorioPessoasLocal();
  print(repo.ler(5));
}
