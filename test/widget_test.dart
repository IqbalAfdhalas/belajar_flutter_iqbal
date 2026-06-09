// Widget test untuk Tugas 2 Praktikum Flutter.
//
// Menguji fitur toggle gambar: di awal tampil "Warna Background", dan setelah
// tombol "Tampilkan Gambar" ditekan, teks tersebut hilang (gambar tampil).

import 'package:flutter_test/flutter_test.dart';

import 'package:belajar_flutter_iqbal/main.dart';

void main() {
  testWidgets('Toggle gambar: Warna Background -> tampilkan gambar',
      (WidgetTester tester) async {
    // Build aplikasi dan trigger satu frame.
    await tester.pumpWidget(const PraktikumApp());

    // Kondisi awal: judul AppBar dan tulisan "Warna Background" tampil.
    expect(find.text('Praktikum Tugas 2'), findsOneWidget);
    expect(find.text('Warna Background'), findsOneWidget);

    // Tekan tombol "Tampilkan Gambar".
    await tester.tap(find.text('Tampilkan Gambar'));
    await tester.pump();

    // Setelah ditekan: gambar tampil, "Warna Background" hilang,
    // dan label tombol berubah menjadi "Kembali ke Warna".
    expect(find.text('Warna Background'), findsNothing);
    expect(find.text('Kembali ke Warna'), findsOneWidget);
  });
}
