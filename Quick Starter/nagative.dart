import 'dart:io';

void main() {
  List<int> numbers = [];
  int length;

  stdout.write('Enter Number Of Elements: ');
  length = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < length; i++) {
    stdout.write('Enter Any Number: ');
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write("Your All Nagitive Elements Is: ");
  for (int i = 0; i < length; i++) {
    if (numbers[i] < 0) {
      stdout.write(numbers[i]);
    }
  }
}
