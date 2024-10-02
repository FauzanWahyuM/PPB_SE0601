void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "Zaki",
      "ipk": 3.96,
      "isMarried": false,
    },
    {
      "nama": "Gide",
      "ipk": 3.86,
      "isMarried": true,
    },
    {
      "nama": "Wahyu",
      "ipk": 3.86,
      "isMarried": false,
    },
    {
      "nama": "Dhafin",
      "ipk": 3.89,
      "isMarried": false,
    },
    {
      "nama": "Lutfhi",
      "ipk": 3.88,
      "isMarried": true,
    }
  ];

  double sumIpk = 0;
  int countMarried = 0;

  for (var student in daftarMahasiswa) {
    sumIpk += student["ipk"];
    if (student["isMarried"]) {
      countMarried++;
    }
  }

  double averageIpk = sumIpk / daftarMahasiswa.length;

  print("Rata-rata IPK: $averageIpk");
  print("Jumlah mahasiswa yang sudah menikah: $countMarried");
}
