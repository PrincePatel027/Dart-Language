import 'dart:io';

void main() {
  List<Map<String, dynamic>> employees = [];

  for (int i = 0; i < 3; i++) {
    int id, age, salary;
    String name;

    print('Enter details for employee ${i + 1}:');
    stdout.write('\nEnter Employee Id: ');
    id = int.parse(stdin.readLineSync()!);
    stdout.write('Enter Employee Name: ');
    name = stdin.readLineSync()!;
    stdout.write('Enter Employee Age: ');
    age = int.parse(stdin.readLineSync()!);
    stdout.write('Enter Employee Salary: ');
    salary = int.parse(stdin.readLineSync()!);

    employees.add({
      'Id': id,
      'Name': name,
      'Age': age,
      'Salary': salary,
    });
  }

  for (int i = 0; i < 3; i++) {
    print(
        '\n-------------------------------------------------------------------');
    print('Your Employee No : ${i + 1} Details Is Below: ');
    print(
        'Id: ${employees[i]['Id']}, Name: ${employees[i]['Name']}, Age: ${employees[i]['Age']}, Salary: ${employees[i]['Salary']}');
  }
  print('\n');
}
