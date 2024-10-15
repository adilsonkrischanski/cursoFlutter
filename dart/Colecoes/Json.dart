import 'dart:convert';

void main() {
  Map<String, dynamic> dados = json.decode(dadosUsuario());
  print(dados["usuario"]["nome"]);
}

String dadosUsuario() {
  return """
{
  "usuario": {
    "id": 12345,
    "nome": "João da Silva",
    "email": "joao.silva@example.com",
    "telefone": "+55 11 98765-4321",
    "endereco": {
      "rua": "Rua das Flores",
      "numero": 123,
      "cidade": "São Paulo",
      "estado": "SP",
      "cep": "01000-000"
    },
    "dataNascimento": "1990-05-15",
    "genero": "masculino",
    "cpf": "123.456.789-00",
    "username": "joaodasilva",
    "senha": "senhaSegura123",
    "dataCadastro": "2024-10-13",
    "status": "ativo"
  }
}
""";
}
