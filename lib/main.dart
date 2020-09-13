import 'package:flutter/material.dart';
import 'halaman_utama.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HalamanUtama(),
    );
  }
}
