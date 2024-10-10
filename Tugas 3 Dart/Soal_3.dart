import 'dart:io';

int fpb(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

int kpk(int a, int b) {
  return (a * b) ~/ fpb(a, b);
}

void main() {
  while (true) {
    print('Masukkan bilangan pertama (bilangan bulat positif): ');
    String? input1 = stdin.readLineSync();

    try {
      int bilangan1 = int.parse(input1!);
      if (bilangan1 <= 0) {
        print('Bilangan pertama harus positif.');
        continue;
      }

      print('Masukkan bilangan kedua (bilangan bulat positif): ');
      String? input2 = stdin.readLineSync();
      int bilangan2 = int.parse(input2!);
      if (bilangan2 <= 0) {
        print('Bilangan kedua harus positif.');
        continue;
      }

      int hasilKpk = kpk(bilangan1, bilangan2);
      print('KPK dari $bilangan1 dan $bilangan2 adalah $hasilKpk');
      break;
    } catch (e) {
      print('Input tidak valid. Masukkan bilangan bulat positif.');
    }
  }
}
