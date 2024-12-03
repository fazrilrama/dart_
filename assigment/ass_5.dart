void main() {
  List<int> initialList = [9, 2, 6, 8, 5, 3, 2, 9, 7, 1];
  List<int> cleanedList = removeDuplicates(initialList);

  print('Initial list is $initialList');
  print('Cleaned list is $cleanedList');
}

List<int> removeDuplicates(List<int> list) {
  return list.toSet().toList();
}
