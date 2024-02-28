import 'dart:io';

void main() {
  List<int> allNumbers = [];
  int length, temp = 0;

  stdout.write('Enter Number Of Elements: ');
  length = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < length; i++) {
    stdout.write('Enter ${i + 1} number: ');
    allNumbers.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < length; i++) {
    if (allNumbers[i] > temp) {
      temp = allNumbers[i];
    }
  }

  print('\n-----------------------------------------------------------');
  print('\t\tYour Largest Elements Is: $temp');
  print('-----------------------------------------------------------\n\n');
}
