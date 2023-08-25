import 'dart:io';

void main() {
  List<double> degrees = [];

  double total = 0;

  for (var i = 0; i < 5; i++) {
    print("Enter Degree");
    double degree = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
    degrees.add(degree);
    total += degree;
  }
  double per = total / 5;
  calcGrade(per);
}

void calcGrade(double per) {
  if (per >= 90) {
    print("Grade is A");
  } else if (per >= 80 && per <= 90) {
    print("Grade is B");
  } else if (per >= 70 && per <= 80) {
    print("Grade is C");
  } else if (per >= 70 && per <= 60) {
    print("Grade is D");
  } else {
    print("Faill");
  }
}
