import 'dart:io';

void main() {
  print('Masukkan bilangan yang ingin dicari: ');
  int cari = int.parse(stdin.readLineSync()!);

  searchInList(cari);
}

void searchInList(int nilai) {
  // Inisialisasi List 2D
  List<List<int>> matrix = [
    List.generate(3, (i) => (i + 1) * 5),
    List.generate(4, (i) => (i + 1) * 2),
    List.generate(5, (i) => (i + 1) * (i + 1)),
    List.generate(6, (i) => i + 3),
  ];

  print('Isi List:');
  for (var row in matrix) {
    print(row.join(' '));
  }

  print('\nBilangan yang dicari: $nilai');

  bool found = false;
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == nilai) {
        print('$nilai berada di: baris ${i + 1} kolom ${j + 1}');
        found = true;
      }
    }
  }

  if (!found) {
    print('$nilai tidak ditemukan dalam List.');
  }
}
