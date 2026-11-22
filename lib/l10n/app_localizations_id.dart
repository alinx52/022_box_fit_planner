// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Perencana Muat Kotak';

  @override
  String get appDescription =>
      'Bandingkan orientasi sejajar 90° untuk melihat berapa banyak barang persegi panjang identik yang muat dalam kotak.';

  @override
  String get languageTooltip => 'Pilih bahasa';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get appearanceTooltip => 'Pilih tampilan';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Datar';

  @override
  String get appearanceSoft => 'Lembut';

  @override
  String get unitLabel => 'Satuan';

  @override
  String get millimetres => 'Milimeter (mm)';

  @override
  String get centimetres => 'Sentimeter (cm)';

  @override
  String get inches => 'Inci (in)';

  @override
  String get unitless => 'Tanpa satuan';

  @override
  String get boxDimensions => 'Dimensi kotak';

  @override
  String get itemDimensions => 'Dimensi barang';

  @override
  String get boxLength => 'Panjang kotak';

  @override
  String get boxWidth => 'Lebar kotak';

  @override
  String get boxHeight => 'Tinggi kotak';

  @override
  String get itemLength => 'Panjang barang';

  @override
  String get itemWidth => 'Lebar barang';

  @override
  String get itemHeight => 'Tinggi barang';

  @override
  String get calculateFit => 'Hitung kapasitas';

  @override
  String get reset => 'Atur ulang';

  @override
  String get errorRequired => 'Masukkan nilai';

  @override
  String get errorPositive => 'Masukkan angka positif';

  @override
  String get errorNumber => 'Masukkan angka yang valid';

  @override
  String get errorFinite => 'Masukkan angka terbatas';

  @override
  String get errorPrecision => 'Gunakan maksimal 3 angka desimal';

  @override
  String get errorLimit => 'Masukkan 1.000.000.000 atau kurang';

  @override
  String get resultsTitle => 'Hasil orientasi';

  @override
  String get bestFit => 'Susunan terbaik';

  @override
  String get orientation => 'Orientasi';

  @override
  String acrossLength(int count) {
    return 'Sepanjang sisi panjang: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'Sepanjang sisi lebar: $count';
  }

  @override
  String layers(int count) {
    return 'Lapisan: $count';
  }

  @override
  String totalItems(int count) {
    return 'Total barang: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Sisa panjang: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Sisa lebar: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Sisa tinggi: $value';
  }

  @override
  String get nothingFits => 'Tidak ada yang muat dengan dimensi tersebut';

  @override
  String get assumptionsTitle => 'Sebelum mengemas';

  @override
  String get assumptions =>
      'Menggunakan dimensi dalam kotak yang dapat dipakai dan barang persegi panjang kaku yang identik dalam kisi sejajar sederhana. Tidak mencakup rotasi miring, pemampatan, penyarangan, sekat, bantalan, ketebalan dinding, batas beban, atau ukuran barang campuran.';

  @override
  String get helpTooltip => 'Bantuan & Panduan';

  @override
  String get helpTitle => 'Panduan Perencana Muatan Kotak';

  @override
  String get helpProblemSolvedTitle => 'Masalah yang Diatasi';

  @override
  String get helpProblemSolvedContent =>
      'Menentukan berapa banyak barang persegi panjang yang muat ke dalam kotak dalam berbagai orientasi serta menghitung sisa ruang.';

  @override
  String get helpHowToUseTitle => 'Cara Penggunaan';

  @override
  String get helpHowToUseContent =>
      'Masukkan dimensi kotak luar (panjang, lebar, tinggi) dan dimensi barang tunggal, lalu ketuk Hitung muatan.';

  @override
  String get helpReadingResultsTitle => 'Membaca Hasil';

  @override
  String get helpReadingResultsContent =>
      'Menampilkan total barang yang muat, distribusi per sumbu (panjang × lebar × tinggi), persentase volume (%), dan sisa ruang.';

  @override
  String get helpExampleTitle => 'Contoh';

  @override
  String get helpExampleContent =>
      'Kotak: 30 x 20 x 10 cm | Barang: 10 x 10 x 5 cm\nHasil: 3 panjang x 2 lebar x 2 tinggi = 12 barang (100% volume terpakai).';

  @override
  String get helpLimitsTitle => 'Validasi & Batasan';

  @override
  String get helpLimitsContent =>
      'Kalkulasi geometris ortogonal saja. Tidak memperhitungkan batas berat, kerapuhan, bantalan pelindung, atau deformasi.';

  @override
  String get helpDataAndPrivacyTitle => 'Data Lokal & Iklan';

  @override
  String get helpDataAndPrivacyContent =>
      'Semua dimensi dihitung secara lokal di perangkat tanpa internet. Spanduk standar AdMob ditampilkan di bawah.';
}
