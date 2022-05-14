void main(List<String> arguments) {
  var list = new List<int>.generate(100, (int index) => index + 1);
  list.shuffle();
  print(list);
}
