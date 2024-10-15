class Pessoa {

    // Pessoa(); //padrao

    Pessoa( String nome,   int idade){
        this.nome = nome;
        this.idade = idade;
    }

//     Pessoa({required String this.nome, required  int this.idade})

    Pessoa.solteira({required String this.nome, required  int this.idade}){
        casado = false;
    }
    Pessoa.casado({required String this.nome, required  int this.idade}){
        this.casado = true; 
    }
    

    String? nome;
    int? idade;
    bool casado = false;
   
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
    Pessoa pessoa = Pessoa.casado(nome: "Adilson", idade: 23);
    print(pessoa.toString());
    pessoa.aniversario();
    print(pessoa.toString());
}