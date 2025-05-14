//mine
List<String> solution(String s) {
  if (s.length % 2 == 1) {
    s += '_';
  }
  List<String> results = [];
  for (int i = 0; i < s.length; i += 2) {
    results.add(s.substring(i, i + 2));
  }
  return results;
}

//best practice
List<String> solution1(String s) {
  List<String> newS = s.split(''); // String convert to array
  List<String> result = [];

  // Check if s is empty
  if (newS.isEmpty) return result;

  // Check if s is odd then add "_" on last element
  if (newS.length % 2 != 0) newS.add('_');

  // Loop Function
  while (newS.isNotEmpty) {
    result.add('${newS[0]}${newS[1]}'); // add first 2 element
    newS = newS.sublist(2); // remove first 2 element
  }

  return result;
}
