import 'dart:io';

void main() {
  int num;

  stdout.write("Enter The Number: ");
  num = int.parse(stdin.readLineSync()!);

  (num%2==0) ? print("This Number Is Even") : print("This Number Is Odd");
}
