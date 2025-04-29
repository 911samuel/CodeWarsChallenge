//mine
String evenOrOdd(int number) {
  return number % 2 == 1 ? "Odd" : "Even"; 
}
//best practice
String evenOrOdd1(int number) => number.isEven ? 'Even' : 'Odd';
