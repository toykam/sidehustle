

main() {
  num studentPercentage = 50;
  num studentScore = 70;
  num classAverage = 60;


  if (studentPercentage >= 60) {
    if (studentScore < (classAverage - 5)) {
      print('Student passed this semester');
    } else {
      print('Student failed this semester based on class average');
    }
  } else {
    print('Student failed this semester based on general general percentage');
  }
}