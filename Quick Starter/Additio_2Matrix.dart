import 'dart:io';

void main() {
  List<List<int>> firstArray = [
    [],
    [],
    [],
  ];

  List<List<int>> secondArray = [
    [],
    [],
    [],
  ];

  List<List<int>> sum2Arrays = [
    [],
    [],
    [],
  ];

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write('Enter Value Of firstArray[$i][$j]: ');
      firstArray[i].add(int.parse(stdin.readLineSync()!));
    }
  }

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write('Enter Value Of secondArray[$i][$j]: ');
      secondArray[i].add(int.parse(stdin.readLineSync()!));
      sum2Arrays[i].add(firstArray[i][j] + secondArray[i][j]);
    }
  }

  print('\n------------------');
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write('  ${sum2Arrays[i][j]}');
    }
    print('');
  }
  print('------------------');
}
