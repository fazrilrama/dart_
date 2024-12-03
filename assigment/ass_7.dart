import 'dart:io';

void main() {
  String wordToGuess = 'EVAPORATE';
  hangman(wordToGuess);
}

void hangman(String word) {
  Set<String> guessedLetters = {};
  String currentGuess = '_' * word.length;
  
  while (currentGuess.contains('_')) {
    print('Kata yang sedang ditebak: $currentGuess');
    stdout.write('Masukkan huruf tebakan: ');
    String guessedLetter = stdin.readLineSync()!.toUpperCase();

    if (guessedLetters.contains(guessedLetter)) {
      print('Anda sudah menebak huruf ini sebelumnya. Coba lagi!');
      continue;
    }

    guessedLetters.add(guessedLetter);

    if (word.contains(guessedLetter)) {
      print('Huruf "$guessedLetter" benar!');
      List<String> updatedGuess = currentGuess.split('');
      for (int i = 0; i < word.length; i++) {
        if (word[i] == guessedLetter) {
          updatedGuess[i] = guessedLetter;
        }
      }
      currentGuess = updatedGuess.join('');
    } else {
      print('Huruf "$guessedLetter" salah!');
    }
  }
  print('Selamat! Anda berhasil menebak kata: $word');
}
