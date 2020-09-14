import 'package:flutter/material.dart';
import 'halaman_android.dart';

class HalamanApple extends StatefulWidget {
  @override
  _HalamanAppleState createState() => _HalamanAppleState();
}

class _HalamanAppleState extends State<HalamanApple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Apple'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Ini halaman Apple'),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanAndroid();
                }));
              },
              child: Text('Ke Halaman Android'),
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
