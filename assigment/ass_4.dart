void main() {
  List<int> list1 = [1, 2, 3, 4, 5, 8, 13, 21, 34, 55, 89];
  List<int> list2 = [89, 1, 2, 3, 5, 8, 13, 42, 67];

  List<int> commonElements = list1.toSet().intersection(list2.toSet()).toList();
  print(commonElements);
}
