import 'package:flutter/material.dart';
import 'halaman_apple.dart';
import 'halaman_android.dart';

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Smartphone Picker',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            CircleAvatar(
              child: Image.asset(
                'assets/img/picker.png',
              ),
              radius: 100.0,
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HalamanApple();
                      }));
                    },
                    child: ListTile(
                      leading: Image.network(
                        'http://www.sulutexpress.com/wp-content/uploads/2020/09/logoapple.png',
                        height: 50.0,
                        width: 50.0,
                        scale: 20.0,
                      ),
                      title: Text('Apple'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HalamanAndroid();
                      }));
                    },
                    child: ListTile(
                      leading: Image.asset(
                        'assets/img/androidlogo.png',
                        height: 50.0,
                        width: 50.0,
                      ),
                      title: Text('Android'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
