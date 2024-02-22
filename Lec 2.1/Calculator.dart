import 'dart:io';

void main() {
  int a, b, choice;

  while (true) {
    print("--------------------------------------------------------");
    print("\t\tPress 1 for Addition...");
    print("\t\tPress 2 for Substriction...");
    print("\t\tpress 3 for Multiplication...");
    print("\t\tpress 4 for Division...");
    print("\t\tPress 5 for Modulo...");
    print("\t\tPress 0 for Exit...");
    print("--------------------------------------------------------");
    stdout.write("\t\tEnter your Choice: ");
    choice = int.parse(stdin.readLineSync()!);
    print("");

    if (choice == 0) {
      print("Exiting The Program\nThankYou for Visiting....");
      break;
    } else {
      stdout.write("\t\tEnter First Value: ");
      a = int.parse(stdin.readLineSync()!);

      stdout.write("\t\tEnter Second Value: ");
      b = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          print("\n\t\t\t$a + $b = ${a + b}\n\n");
          print("--------------------------------------------------------");
          break;
        case 2:
          print("\n\t\t\t$a - $b = ${a - b}\n\n");
          print("--------------------------------------------------------");
          break;
        case 3:
          print("\n\t\t\t$a X $b = ${a * b}\n\n");
          print("--------------------------------------------------------");
          break;
        case 4:
          print("\n\t\t\t$a / $b = ${a / b}\n\n");
          print("--------------------------------------------------------");

          break;
        case 5:
          print("\n\t\t\t$a % $b = ${a % b}\n\n");
          print("--------------------------------------------------------");
          break;
        default:
          print("\t\tEnter Valid Choice...");
          break;
      }
    }
  }
}
