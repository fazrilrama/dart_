import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write('Masukkan sebuah kalimat: ');
  String input = stdin.readLineSync()!;

  String reversedString = reverseWords(input);
  print('Hasil terbalik: $reversedString');
}

String reverseWords(String sentence) {
  List<String> words = sentence.split(' ');
  words = words.reversed.toList();
  return words.join(' ');
}
