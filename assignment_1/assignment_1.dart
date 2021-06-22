import 'dart:io';

main() {

  print("Enter student percentage: ");
  var studentPerc= stdin.readLineSync();

  print("Enter student score: ");
  var studentSc = stdin.readLineSync();

  print("Enter class average: ");
  var classAvg = stdin.readLineSync();

  num studentPercentage = num.tryParse(studentPerc as String) as num;
  num studentScore = num.tryParse(studentSc as String) as num;
  num classAverage = num.tryParse(classAvg as String) as num;


  if (studentPercentage >= 60) {
    if (studentScore < (classAverage - 5)) {
      print('Student failed this semester based on class average');
    } else {
      print('Student passed this semester');
    }
  } else {
    print('Student failed this semester based on general general percentage');
  }
}