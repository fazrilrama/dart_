import 'dart:io';

void main() {
  stdout.write('Masukkan ukuran papan permainan (misal: 4 untuk 4x4): ');
  int size = int.parse(stdin.readLineSync()!);
  drawBoard(size);
}

void drawBoard(int size) {
  for (int row = 0; row < size; row++) {
    String rowContent = '';
    if(row == 0) {
      print('-' * (size * 3));
    }

    for (int col = 0; col < size; col++) {
      rowContent += '|   ';
    }

    print(rowContent);
    if (row < size) {
      print('-' * (size * 3));
    }
  }
}
