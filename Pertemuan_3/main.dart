void main() {
//   int b = 2;
//   int a = 5;
//   print(a >= b ? true : false);

  String? a;

  print(a ?? "Zaki anjay");

  var i = 41;
  if (i > 0) {
    print("$i = Positive");
  } else {
    print("$i = Negative");
  }

  print(daftarMahasiswa());

  print(MyClass);
}

List<String> daftarMahasiswa() {
  List<String> mahasiswa = ["Fauzan"];
  return mahasiswa;
}

mixin MyMixin {
  void myMethod() {
    print('This is from MyMixin');
  }
}

class MyClass with MyMixin {
  void anotherMethod() {
    print('This is from MyClass');
  }
}
