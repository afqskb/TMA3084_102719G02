import 'dart:io';
void main() {
// prices

const double smallPrice = 5;
const double mediumPrice = 7;
const double largePrice = 10;
double price = 0;

bool isOrdering = true;

while (isOrdering) {

stdout.write('Pizza Menu:\n1. Small - RM5\n2. Medium - RM7\n3. Large - RM10\n');
stdout.write('Enter the size of the pizza (1,2 and 3): '); // use stdout.write cuz no new line
String? sizeInput = stdin.readLineSync(); //stdin.readLineSync() returns a String
// ? means the value can be null

//to change string to int we use int.parse()
int size = int.parse(sizeInput!); // ! means the value is not null
// can also just use int.parse(stdin.readLineSync()!) to avoid creating a variable

stdout.write('Enter the quantities of pizzas: ');
int quantity = int.parse(stdin.readLineSync()!);

switch (size) {
  case 1:
    price = price + (smallPrice * quantity);
    break;
  case 2:
    price = price + (mediumPrice * quantity);
    break;
  case 3:
    price = price + (largePrice * quantity);
    break;
  default:
    print('Invalid size');
    exit(0); // exit the program

}


stdout.write('Do you want to order more pizzas? (y/n): ');
String? orderMore = stdin.readLineSync();

if (orderMore == 'n') {
  isOrdering = false;
}  else if (orderMore == 'y') {
  isOrdering = true;

}
}
//print('The final price is: RM $price'); note to self, dart cant print integers so we need parse
print('The final price is: ${price.toStringAsFixed(2)} USD');
}