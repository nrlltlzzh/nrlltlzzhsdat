class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa(this.nama, this.nim);
}

class Jadwal {
  String hari;
  String waktu;
  String ruangan;
  String matkulNama;
  List<Mahasiswa> daftarMahasiswa = [];

  Jadwal(this.hari, this.waktu, this.ruangan, this.matkulNama);

  void tambahMahasiswa(Mahasiswa mahasiswa) {
    daftarMahasiswa.add(mahasiswa);
  }

 void tampilkanJadwal() {
    print('Mata Kuliah: $matkulNama');
    print('Hari: $hari, Waktu: $waktu, Ruangan: $ruangan');
    print('Daftar Mahasiswa:');
    for (var mahasiswa in daftarMahasiswa) {
      print('${mahasiswa.nama} (${mahasiswa.nim})');
    }
  }
}


class SistemPenjadwalan {
  List<Jadwal> daftarJadwal = [];

  void tambahJadwal(Jadwal jadwal) {
    daftarJadwal.add(jadwal);
  }

  void tampilkanJadwal() {
    if (daftarJadwal.isEmpty) {
      print('Tidak ada jadwal kelas.');
    } else {
      print('Daftar Jadwal Kelas:');
      for (var jadwal in daftarJadwal) {
        jadwal.tampilkanJadwal();
        print('-' * 20);
      }
      print('');
    }
  }

  void daftarKelas(String nama, String nim, Jadwal jadwal) {
    Mahasiswa mahasiswa = Mahasiswa(nama, nim);
    jadwal.tambahMahasiswa(mahasiswa);
    print(
        'Mahasiswa $nama ($nim) berhasil didaftarkan ke kelas ${jadwal.hari} ${jadwal.waktu}.');
  }
}

void main() {
  SistemPenjadwalan sistemPenjadwalan = SistemPenjadwalan();

  Jadwal jadwal1 = Jadwal('Senin', '12:30', 'LAB.DESIGN', 'Pemrograman Web Dasar');
  Jadwal jadwal2 = Jadwal('Selasa', '07:30', 'LAB.BASDAT', 'Basis Data');
  Jadwal jadwal3 = Jadwal('Selasa', '07:30', 'LAB.BASDAT', 'Aljabar Vektor Dan Matrik');
  Jadwal jadwal4 = Jadwal('Rabu', '14.10', 'LAB.HARDWARE', 'Pemrograman Berorientasi Objek');
  Jadwal jadwal5 = Jadwal('Kamis', '07:30', 'LAB.NIRKABEL', 'Struktur Data');
  Jadwal jadwal6 = Jadwal('Jumat', '14:10', 'GKT/G2.03', 'Bahasa Inggris Karir');

  sistemPenjadwalan.tambahJadwal(jadwal1);
  sistemPenjadwalan.tambahJadwal(jadwal2);
  sistemPenjadwalan.tambahJadwal(jadwal3);
  sistemPenjadwalan.tambahJadwal(jadwal4);
  sistemPenjadwalan.tambahJadwal(jadwal5);
  sistemPenjadwalan.tambahJadwal(jadwal6);

  sistemPenjadwalan.tampilkanJadwal();

  sistemPenjadwalan.daftarKelas('Lala', '362358302034', jadwal1);
  sistemPenjadwalan.daftarKelas('Vanisa', '362358302033', jadwal2);
  sistemPenjadwalan.daftarKelas('Devi', '362358302032', jadwal3);
  sistemPenjadwalan.daftarKelas('Aulia', '362358302031', jadwal4);
  sistemPenjadwalan.daftarKelas('Putri', '362358302030', jadwal5);
  sistemPenjadwalan.daftarKelas('Zalva', '362358302130', jadwal6);
  sistemPenjadwalan.daftarKelas('Rahma', '362358302039', jadwal1);
  sistemPenjadwalan.daftarKelas('Ulfa', '362358302038', jadwal2);
  sistemPenjadwalan.daftarKelas('Mega', '362358302037', jadwal3);
  sistemPenjadwalan.daftarKelas('Ratna', '362358302036', jadwal4);
  sistemPenjadwalan.daftarKelas('Anisa', '362358302035', jadwal5);
  sistemPenjadwalan.daftarKelas('Adelia', '362358302130', jadwal6);

  print('-' * 20);

  sistemPenjadwalan.tampilkanJadwal();
}
