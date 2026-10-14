// main.dart – imports myLib.dart, creates an employee, 
//calculates overtime pay, and prints the total salary.

class Employee {

  late String jobTitle;
  late String location;
  late double salary;
  late double overtimeHr;
  //had to add extraPayPerHr cuz code in the lecture wont run idky
  late double extraPayPerHr;

  Employee (this.jobTitle, this.location, 
            this.salary, this.overtimeHr,
            this.extraPayPerHr);
  
}