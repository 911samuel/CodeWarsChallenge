//mine
List<int> reverseSeq(int n) {
  List<int> result = [];
  for (int i = n; i > 0; i--) {
    result.add(i);
  }
  return result;
}

// best practice
List<int> reverseSeq1(int n) => [for (int i = n; i >= 1; i--) i];
