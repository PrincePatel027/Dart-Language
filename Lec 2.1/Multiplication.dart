import 'dart:io';

void main() {
  int a, b, multi;

  stdout.write("Enter The Value Of A : ");
  a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter The Value Of B : ");
  b = int.parse(stdin.readLineSync()!);

  multi = a * b;

  print("\n\n--------------------------------------------------------");
  print("|\tYour Multiplication Of $a And $b Is: $multi");
  print("--------------------------------------------------------");
}
