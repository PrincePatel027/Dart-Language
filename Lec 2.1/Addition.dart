import 'dart:io';

void main() {
  int a, b, sum;

  stdout.write("Enter Value Of A: ");
  a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Value Of B: ");
  b = int.parse(stdin.readLineSync()!);

  sum = a + b;

  print('The sum of $a and $b is: $sum');
}
