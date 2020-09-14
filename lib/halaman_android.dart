import 'package:flutter/material.dart';
import 'package:learn_flutter_2/halaman_apple.dart';

class HalamanAndroid extends StatefulWidget {
  @override
  _HalamanAndroidState createState() => _HalamanAndroidState();
}

class _HalamanAndroidState extends State<HalamanAndroid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Android'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini halaman Android'),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanApple();
                }));
              },
              child: Text('Ke Halaman Apple'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
