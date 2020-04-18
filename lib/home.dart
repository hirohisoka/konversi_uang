import 'package:flutter/material.dart';
import 'package:celengan/Hasil_Konversi.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _nominal = 0;
  List<String> konversi = ["USD", "EUR"];
  String _konversi;

  void pilihKonversi(String value) {
    setState(() {
      _konversi = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('images/logo.png'),
        ),
        title: new Text('APLIKASI KONVERSI'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/Profil');
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(labelText: 'Nominal'),
                onChanged: (txt) {
                  setState(() {
                    _nominal = int.parse(txt);
                  });
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                hint: Text("Pilih Konversi Mata Uang"),
                onChanged: (String value) {
                  pilihKonversi(value);
                },
                value: _konversi,
                items: konversi.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HasilKonversi(
                              konversi: _konversi,
                              input_nominal: _nominal,
                            )),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.green,
                // textColor: Colors.white,
                child: Text(
                  'KONVERSI',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
