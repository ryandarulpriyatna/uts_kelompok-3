import 'package:flutter/material.dart';
import './beranda.dart';
import './about.dart';
import './login.dart';

void main() => runApp(profile());

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("About Kelompok 3"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("About"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const profile()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              ),
            ],
          ),
        ),
      ),
      body:
          new Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        RaisedButton(
          onPressed: () {
            ///Navigasi
            Navigator.of(context).pop("SubDetailActivity: 85");
          },
          child: Text("Kembali"),
        ),
        new Image.asset(
          "images/logo_sttb.png",
          width: 200.0,
          height: 200.0,
        ),
        new Text(
          " ",
          style: new TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          " Membuat aplikasi dengan desain yang menarik di berbagai platform, kini semakin mudah dilakukan. Salah satu caranya ialah dengan menggunakan Flutter.  Apa itu Flutter? Flutter adalah sejenis framework yang digunakan untuk membantu developer membuat aplikasi mobile multiplatform. Flutter sendiri telah banyak digunakan dalam pembuatan mobile app perusahaan besar, seperti Alibaba, Ebay, dan BMW. Tak heran, kini banyak developer aplikasi yang mulai tertarik untuk mencoba Flutter. ",
          style: new TextStyle(
            fontSize: 17.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          " ",
          style: new TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          "Copyright by Kelompok 3",
          style: new TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          "Ryand Arul Priyatna-21552011430",
          style: new TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          "Ananda Nurnovita Putri-21552011285",
          style: new TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          "Neni Anggraeni-21552011446",
          style: new TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ]),
    ));
  }
}
