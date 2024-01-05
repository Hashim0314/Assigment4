import 'dart:io';
import 'dart:math';

void main() {
  var myClss = asignmnt4();
  myClss.answer01();
  myClss.answer02();
  myClss.answer03();
  myClss.answer04();
  myClss.answer05();
  myClss.answer06();
  myClss.answer07();
  myClss.asnwer08();
  myClss.answer09();
  myClss.answer11();
}

class asignmnt4 {
  answer01() {
    List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    List evenList = [];
    for (var i = 0; i < myList.length; i++) {
      if (myList[i] % 2 == 0) {
        evenList.add(myList[i]);
      }
    }
    print('Even List : $evenList');
  }
  
  answer02(){
    print('Enter number for check prime number or not');
  int number = int.parse(stdin.readLineSync()!);
  bool isPrime = true;
  if(number <=1){
    isPrime = false;
  }
  else{
    for(int i = 2; i<=number /2; i++){
      if(number %i==0){
        isPrime = false;
        break;
      }
    }
  }
  if(isPrime){
    print('$number is prime number');
  }
  else{
    print('$number is not prime number');
  }
  }

  answer03() {
    print('Enter number for check prime number or not');
    int number = int.parse(stdin.readLineSync()!);
    bool isPrime = true;
    if (number <= 1) {
      isPrime = false;
    } else {
      for (int i = 2; i <= number / 2; i++) {
        if (number % i == 0) {
          isPrime = false;
          break;
        }
      }
    }
    if (isPrime) {
      print('$number is prime number');
    } else {
      print('$number is not prime number');
    }
  }

  answer04() {
    List myList = [3, 9, 1, 6, 4, 2, 8, 5, 7];
    int largestNumbr = 0;
    for (var i = 0; i < myList.length; i++) {
      if (myList[i] > largestNumbr) {
        largestNumbr = myList[i];
      }
    }
    print('Largest Number in List = $largestNumbr');
  }

  answer05() {
    bool palidrome(String palidromeValue) {
      String value = palidromeValue.split('').reversed.join('');
      return value == palidromeValue;
    }

    stdout.write('Enter any word for check Palidrome or not   : ');
    String word = stdin.readLineSync() ?? '';
    if (palidrome(word)) {
      print('Palidrome Word : $word');
    } else {
      print('Normal Word : $word');
    }
  }

  answer06() {
    print('Enter a number Limit for break Triangle Loop');
    int traingle = int.parse(stdin.readLineSync()!);
    for (var a = 1; a <= traingle; a++) {
      for (var b = 1; b <= a; b++) {
        stdout.write('$a');
      }
      print('');
    }
  }

  answer07() {
    List numbr = <int>[1, 3, 5, 10, 20, 15, 38, 24, 44, 58];
    List newList = [];
    for (var i = 0; i < numbr.length; i++) {
      if (numbr[i] >= 5) {
        newList.add(numbr[i]);
      }
    }
    print('Old List : $numbr');
    print('New Updated List : $newList');
  }

  asnwer08() {
    stdout.write('Enter Word for cound vowel alphabet :  ');
    String charcter = stdin.readLineSync()!;
    int vowel = 0;
    for (var i = 0; i < charcter.length; i++) {
      if (charcter[i].contains('a') ||
          charcter[i].contains('e') ||
          charcter[i].contains('i') ||
          charcter[i].contains('o') ||
          charcter[i].contains('u') ||
          charcter[i].contains('A') ||
          charcter[i].contains('E') ||
          charcter[i].contains('I') ||
          charcter[i].contains('O') ||
          charcter[i].contains('U')) {
        vowel++;
      }
    }
    print('Word : $charcter');
    print('Vowel Character : $vowel');
  }

  answer09() {
    List myList = [10, 20, 30, 35, 40, 80, 88, 90, 98, 108];
    int maxValue = 0;
    int minValue = 0;
    myList.sort();
    for (var i = 0; i < myList.length; i++) {
      if (myList[i] > maxValue) {
        maxValue = myList[i];
        minValue = myList.first;
      }
    }
    print('Maximum Value in List : $maxValue');
    print('Minimum Value in List : $minValue');
  }

  answer11() {
    List<Map<String, dynamic>> studentDetails = [
      {
        'name': 'ALI',
        'marks': [80, 75, 90],
        'section': 'A',
        'rollNumber': 101
      },
      {
        'name': 'AYESHA',
        'marks': [95, 92, 88],
        'section': 'B',
        'rollNumber': 102
      },
      {
        'name': 'SAAD',
        'marks': [70, 65, 75],
        'section': 'A',
        'rollNumber': 103
      },
    ];
   //String name = '';
   var obtainMarks;
   var totalmarks = 300;
   var averagemarks;
   var grade = '';
   for(var result in studentDetails){
    String name = result['name'];
    String section = result['section'];
    int rollnmr = result['rollNumber'];
    List<int> marks = result['marks'];
    obtainMarks = marks.reduce((v,e) => v + e);   
    averagemarks = (obtainMarks / totalmarks) * 100;
    if(averagemarks >= 90){
      grade = 'A+';
    }
    else if(averagemarks >=80){
      grade = 'A';
    }
        else if(averagemarks >=70){
      grade = 'B';
    }
            else if(averagemarks >=60 ){
      grade = 'C';
    }
            else if(averagemarks >=50 ){
      grade = 'F';
    }
    print('Student Name : $name |Section : $section |RollNumber : $rollnmr | Grade : $grade');

   }
  }
}
