
class Pessoa {
  //Pessoa(); //padrao
  //Pessoa({required String this.nome, required  int this.idade})

  Pessoa(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }


  Pessoa.solteira({required String this.nome, required int this.idade}) {
    casado = false;
  }
  Pessoa.casado({required String this.nome, required int this.idade}) {
    this.casado = true;
  }

  String? nome;
  int? idade;
  bool casado = false;
  double? _dinhiro;

  set dinheiro(double? dinheiro) {
    print("modificando dinheiro do $nome");
    if(dinheiro != null){
      if (dinheiro > 0 && dinheiro < 1000000) {
        _dinhiro = dinheiro;
      } else {
        print("valor nao modificado ");
      } 
    }
  }
  double? get dinheiro{
    return _dinhiro;
  }

  void aniversario() {
    print("Aniversario");
    idade = idade! + 1; // garante que idade nao é nula
  }

  void casar() {
    casado = true;
  }

  String toString() {
    return "nome: $nome e idade $idade $casado";
  }
}

void main() {
  Pessoa pessoa = Pessoa.casado(nome: "Adilson", idade: 23);
  print(pessoa.toString());
  pessoa.dinheiro = 10000.0;
  pessoa.aniversario();
  print(pessoa.toString());
  print(pessoa.dinheiro);
}
