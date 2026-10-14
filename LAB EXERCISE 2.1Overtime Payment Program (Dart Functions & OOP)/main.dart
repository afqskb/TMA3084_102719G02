import 'dart:io';
import 'myLib.dart' as emp;

void main(){
  

  var william = emp.Employee(
    'Manager', 'Madrid', 5000, 7, 0
  );

  if (william.salary >= 4000) {
    william.extraPayPerHr = 10;
  } else {
    william.extraPayPerHr = 20;
  }

  double total = william.salary + (william.overtimeHr * william.extraPayPerHr);

  print ('Total Salary = \$$total USD');

  File file = File('output.txt');
  file.writeAsStringSync('Total Salary = \$$total USD');
  print('File Written');

}

