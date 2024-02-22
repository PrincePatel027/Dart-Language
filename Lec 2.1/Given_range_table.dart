import 'dart:io';

void main() {
  int n1, n2;

  stdout.write("Enter multiplication table Starting Number: ");
  n1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter multiplication table Ending Number: ");
  n2 = int.parse(stdin.readLineSync()!);

  for (int i = n1; i <= n2; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$i X $j = ${i * j}");
    }
    print("");
  }
}
