import 'dart:io';

void printProducts(List myProducts) {
  print("\nList Of All Items Is Below : ");
  for (int i = 0; i < myProducts.length; i++) {
    print("\t\t\t\t${myProducts[i]}");
  }
  print('');
}

void main() {
  int choice;
  List<String> myProducts = [
    "Tv",
    "Ac",
    "Computer",
    "Laptop",
    "Milk",
  ];
  do {
    print('\nPress 1 for Add Product..');
    print('Press 2 for Delete Product..');
    print('Press 3 for Update Product..');
    print('Press 4 for View Product..');
    print('Press 0 for Exit..');

    stdout.write('\nEnter Your Choice: ');
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("\nYou Succesfully Selected Add Product....");
        stdout.write("\nEnter New Product Name: ");
        myProducts.add(stdin.readLineSync()!);
        printProducts(myProducts);
        break;

      case 2:
        print("\nYou Succesfully Selected Delete Product....");
        stdout.write("\nEnter Product Index: ");
        int index = int.parse(stdin.readLineSync()!);
        if (index >= 0 && index < myProducts.length) {
          myProducts.removeAt(index);
          printProducts(myProducts);
        } else {
          print("Invalid index. No product deleted.");
        }
        break;

      case 3:
        print("\nYou Succesfully Selected Update Product....");
        stdout.write("\nEnter Product Index To Update: ");
        int index = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Updated Product Name: ");
        String newName = stdin.readLineSync()!;
        myProducts[index] = newName;
        printProducts(myProducts);
        break;

      case 4:
        print("\nYou Succesfully Selected View Product....");
        printProducts(myProducts);
        break;

      case 0:
        print('\nExiting The Program Thank You For Visiting...');
        break;

      default:
        print('\nInvalid choice Try Again Later...');
    }
    print('');
  } while (choice != 0);
}
