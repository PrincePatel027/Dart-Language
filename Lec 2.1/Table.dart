import 'dart:io';

void main() {
  int num;

  stdout.write("Enter Table Number: ");
  num = int.parse(stdin.readLineSync()!);

  print("\n\n-----------------------------------------");
  for (int i = 1; i <= 10; i++) {
    print("|\t\t$num X $i = ${i * num}\t\t|");
  }
  print("-----------------------------------------\n\n");
}
