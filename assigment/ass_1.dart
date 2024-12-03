import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int randomNumber = random.nextInt(100) + 1;

  print('Saya telah memilih angka acak antara 1 dan 100.');
  print('Coba tebak angka saya!');

  int guess = 0; 

  while (guess != randomNumber) {
    stdout.write('Masukkan tebakan Anda: ');
    guess = int.parse(stdin.readLineSync()!);

    if (guess < randomNumber) {
      print('Tebakan Anda terlalu rendah!');
    } else if (guess > randomNumber) {
      print('Tebakan Anda terlalu tinggi!');
    } else {
      print('Selamat! Anda berhasil menebak angka $randomNumber!');
    }
  }
}
