import 'package:flutter/material.dart';
import 'dart:math';

class HasilKonversi extends StatelessWidget {
  HasilKonversi({@required this.konversi, @required this.input_nominal});

  final String konversi;
  final int input_nominal;

  @override
  Widget build(BuildContext context) {
    double usd = (input_nominal * 64) / pow(100, 3);
    double eur = (input_nominal * 59) / pow(100, 3);
    double nilai;
    if (konversi == "USD")
      nilai = usd;
    else if (konversi == "EUR") nilai = eur;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              "IDR : ${input_nominal} ",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " KE ",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${konversi} : ${nilai}",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
