import 'dart:io';

void main() {
  int choice = 1;
  List<String> names = [];

  do {
    print(
        '---------------------------------------------------------------------------');
    print('\t\t\tPress 1 For Add Name....');
    print('\t\t\tPress 0 For exit....');
    print(
        '---------------------------------------------------------------------------');

    stdout.write('Enter Your Choice: ');
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        String name;
        stdout.write('\t\t\tEnter Your Name: ');
        name = stdin.readLineSync()!;
        names.add(name);
      case 0:
        break;
      default:
        print('\t\t\tEnter Valid Choice.....');
        break;
    }
  } while (choice != 0);

  List newList = names.toSet().toList();

  print(newList);
}
