void main() {
  try {
    funcao(-7);
  } catch (e) {
    print(e);
  }
}

void funcao(int x) {
  if (x < 0) {
    throw VoceEstFazendoBesteira();
  }
  print(x);
}

class VoceEstFazendoBesteira implements Exception {
  String toString() {
    return "Não pode fazer isso amigo";
  }
}
