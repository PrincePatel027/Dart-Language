void main() {
  List<int> numbers = [1, 2, 3];
  List<String> addHello = [];
  for (int i = 0; i < numbers.length; i++) {
    addHello.add('${numbers[i]} hello');
  }

  print(addHello);
}
