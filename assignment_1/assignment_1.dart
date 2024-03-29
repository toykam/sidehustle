import 'dart:io';


// Problem Statement 
//# Given the final percentage a student has gotten at the end of a semester, you need to write a program that decides if the student has passed or failed the semester.
// If the percentage is higher than or equal to 60, the student has passed the semester. If the percentage is lower than 60, the student has failed the semester.
// However, the percentage is not the only thing that determines if a student has passed or failed. A student does not pass if their score is 5 points below the class average.<br> For instance, if the average class score is 70, the student must have a minimum score of 65 to pass.
// If the average class score is 50, the student still needs a score of 60 to pass based on our first condition.

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