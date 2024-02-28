import 'dart:io';

void main() {
  List<List<int>> array = [
    [],
    [],
    [],
  ];

  int choice = 1;

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write('Enter Value Of Array[$i][$j]: ');
      array[i].add(int.parse(stdin.readLineSync()!));
    }
  }

  do {
    int sum = 0;
    int rowSum = 0;
    int columnSum = 0;
    int sumDiagonal = 0;
    int sumAntiDiagonal = 0;

    print('\nPress 1 For Sum All Elements...');
    print('Press 2 For Sum Row Sum...');
    print('Press 3 For Sum Column Sum...');
    print('Press 4 For Sum Diagonal Element...');
    print('Press 5 For Sum Antidiagonal Element...');
    print('Press 0 For Exit...');

    stdout.write('\nEnter Your Choice: ');
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('\nYou Select All Elements Sum Successfully...');
        for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
            sum += array[i][j];
          }
        }
        print('\n-----------------------------------------------------------');
        print('\t\tYour Sum Of All Elements Is: $sum');
        print('-----------------------------------------------------------');
        break;

      case 2:
        print('\n\t\tYou Select Sum Row Elements Successfully...');
        stdout.write('\n\t\tEnter Row Number : ');
        int rowNum = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < 3; i++) {
          rowSum += array[rowNum][i];
        }
        print('\n-----------------------------------------------------------');
        print('\t\tYour Sum Of Row Elements Is: $rowSum');
        print('-----------------------------------------------------------');
        break;

      case 3:
        print('\n\t\tYou Select Sum Column Elements Successfully...');
        stdout.write('\n\t\tEnter Column Number : ');
        int columnNum = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < 3; i++) {
          columnSum += array[i][columnNum];
        }
        print('\n-----------------------------------------------------------');
        print('\t\tYour Sum Of Column Elements Is: $columnSum');
        print('-----------------------------------------------------------');
        break;

      case 4:
        print('\n\t\tYou Select Sum Diagonal Elements Successfully...');
        for (int i = 0; i < 3; i++) {
          sumDiagonal += array[i][i];
        }
        print('\n-----------------------------------------------------------');
        print('\t\tYour Sum Of Diagonal Elements Is: $sumDiagonal');
        print('-----------------------------------------------------------');
        break;

      case 5:
        print('\nYou Select Sum Antidiagonal Elements Successfully...');
        for (int i = 0; i < 3; i++) {
          sumAntiDiagonal += array[i][2 - i];
        }
        print('\n-----------------------------------------------------------');
        print('\t\tYour Sum Of Anti-Diagonal Elements Is: $sumAntiDiagonal');
        print('-----------------------------------------------------------');
        break;

      case 0:
        print('\n-----------------------------------------------------------');
        print('\t\tExiting The Program.....');
        print('-----------------------------------------------------------');
        break;

      default:
        print('\n-----------------------------------------------------------');
        print('\t\tEnter Valid Choice....');
        print('-----------------------------------------------------------');

        break;
    }
  } while (choice != 0);
}
