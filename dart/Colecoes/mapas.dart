void main() {
  Map<int, String> dds = {11: "SP", 41: "CTBA", 19: "Campinas"};
  dds[47] = "joinville";
  dds.remove(41);
  print(dds[11]);
  print(dds);
  print(dds.values);
  print(dds.keys);
  print(dds.containsKey(47));

  dds.forEach((key, value) {
    print("$key -> $value ");
  });

  dds.removeWhere((key, value) => key > 20);
}
