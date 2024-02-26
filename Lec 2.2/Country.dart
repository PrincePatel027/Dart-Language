import 'dart:io';

void main() {
  List<String> countries = [];

  int countryNumbers = 28;

  for (int i = 0; i < countryNumbers; i++) {
    stdout.write("Enter Country Name (Press 'E' To Exit): ");
    String input = stdin.readLineSync()!;
    if (input.toUpperCase() == 'E') {
      break;
    }
    countries.add(input);
  }

  print("\nList of countries:");
  for (int i = 0; i < countries.length; i++) {
    print(countries[i]);
  }
}
