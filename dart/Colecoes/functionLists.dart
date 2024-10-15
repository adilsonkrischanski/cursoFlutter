void main() {
  List<int> maluca = List.filled(100, 8);
  List<int> generate = List.generate(10, funcao);

  print(maluca);
  print(generate);
  print(generate.isEmpty);
  print(generate.any((i) => i % 10 == 10));
  print(generate.where((i) => i%2==0));
  print(generate.map((i) => i*2));



}

int funcao(int pos) {
  return pos*5;

}
