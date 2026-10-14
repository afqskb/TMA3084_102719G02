import 'dart:io';
import 'myLib.dart' as emp;

void main(){
  

  var felicia = emp.Employee(
    'Manager', 'Madrid', 5000, 7, 0
  );

  if (felicia.salary >= 4000) {
    felicia.extraPayPerHr = 10;
  } else {
    felicia.extraPayPerHr = 20;
  }

  double total = felicia.salary + (felicia.overtimeHr * felicia.extraPayPerHr);

  print ('Total Salary = \$$total USD');

  File file = File('output.txt');
  file.writeAsStringSync('Total Salary = \$$total USD');
  print('File Written');

}

