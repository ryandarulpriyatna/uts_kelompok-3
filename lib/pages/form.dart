import 'package:flutter/material.dart';
import './beranda.dart';
import './about.dart';
import './login.dart';
import './profile.dart';

void main() => runApp(const inputan());

class inputan extends StatelessWidget {
  const inputan({Key? key}) : super(key: key);

  static const String _title = 'Registrasi';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController npmController = TextEditingController();
  TextEditingController ttlController = TextEditingController();
  TextEditingController jkController = TextEditingController();
  TextEditingController alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                ///Navigasi
                Navigator.of(context).pop("SubDetailActivity: 85");
              },
              child: Text("Kembali"),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Form Tambah Data',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nama Lengkap',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: npmController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'NPM',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: ttlController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tempat, Tanggal Lahir',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: jkController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Jenis Kelamin',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: alamatController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Alamat',
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                child: const Text('Tambah Data'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
