import 'package:flutter/material.dart';
import './beranda.dart';
import './about.dart';
import './login.dart';
import './profile.dart';

void main() => runApp(Rayen());

class Rayen extends StatelessWidget {
  const Rayen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Biodata Diri"),
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
          "images/rayen.jpg",
          width: 200.0,
          height: 200.0,
        ),
        new Text(
          "Nama : Ryand Arul Priyatna",
          style: new TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          "NPM : 21552011430",
          style: new TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          "TTL : 05 Mei 2003",
          style: new TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          "Jenis Kelamin : Laki - laki",
          style: new TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        new Text(
          "Alamat : Pangandaran",
          style: new TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ]),
    ));
  }
}
