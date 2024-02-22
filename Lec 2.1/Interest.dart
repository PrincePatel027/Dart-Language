import 'dart:io';

void main() {
  double principal, rate, time, interest;

  stdout.write("Enter Principal Amount: ");
  principal = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Rate Of Interest: ");
  rate = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Time In years: ");
  time = double.parse(stdin.readLineSync()!);

  interest = (principal * rate * time) / 100;

  print("\nYour Simple Interest Is: $interest\n");
}
