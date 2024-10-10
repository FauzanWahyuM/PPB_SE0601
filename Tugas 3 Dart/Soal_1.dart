import 'dart:math';
import 'dart:io';

void createMatrix() {
  // Get the values of A and B from the user
  print("Enter the value of A:");
  int A = int.parse(stdin.readLineSync()!);

  print("Enter the value of B:");
  int B = int.parse(stdin.readLineSync()!);

  // Create a matrix AxB with random values
  List<List<int>> matrix =
      List.generate(A, (_) => List.generate(B, (_) => Random().nextInt(10)));

  // Print the matrix
  print("Matriks AxB");
  print("A: $A");
  print("B: $B");
  print("Isi matrix:");
  matrix.forEach((row) => print(row.join(" ")));

  // Create the transpose of the matrix
  List<List<int>> transpose =
      List.generate(B, (j) => List.generate(A, (i) => matrix[i][j]));

  // Print the transpose
  print("Hasil transpose:");
  transpose.forEach((row) => print(row.join(" ")));
}

void main() {
  createMatrix();
}
