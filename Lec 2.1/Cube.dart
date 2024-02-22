import 'dart:io';

void main() {
  int num;

  stdout.write("Enter Number To Cube: ");
  num = int.parse(stdin.readLineSync()!);

  print("\nYour Cube Number is: ${num * num * num}\n");
}
