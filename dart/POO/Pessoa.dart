class Pessoa {

    Pessoa( String nome,   int idade){
        this.nome = nome;
        this.idade = idade;
    }
    

    String? nome;
    int? idade;
    bool casado = false;
    double? _dinheiro; //privado

    set dinheiro(double? valor){
        print("Colocando Dinheiroo");
        _dinheiro = valor;
    }

    double? get dinheiro{
       return _dinheiro;
    }
   

    void aniversario(){
        print("Aniversario");
        idade = idade! + 1;
    }

    void casar(){
        casado =  true; 
    }

    String toString(){
        return " nome: $nome e idade $idade $casado";
    }

}

void main(){
    Pessoa pessoa = Pessoa("Adilson", 23);
    pessoa.dinheiro = 30;
    print(pessoa.toString());
    pessoa.aniversario();
    print(pessoa.toString());
}