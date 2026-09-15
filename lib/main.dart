import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0, // Gölgeyi sıfırladık, çizgiyi kendimiz çizeceğiz
          shape: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
              width: 2,
            ),
          ),
          title: const Text(
            'Bugün Ne Yesem ?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 27,
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  YemekSayfasi({super.key});

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuksuyu Çorbası',
    'Düğün Çorbası',
    'Yoğurtlu Çorbası',
  ];

  List<String> yemekAdlari = [
    'Karnıyarık Yemeği',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Fırında Balık',
  ];

  List<String> tatliAdlari = [
    'Kadayıf Tatlısı',
    'Cevizli Baklava',
    'Fırın Sütlaç',
    'Kazandibi',
    'Dondurma',
  ];

  void yemekCesitleriniYenile() {
    setState(
      () {
        corbaNo = Random().nextInt(5) + 1;
        yemekNo = Random().nextInt(5) + 1;
        tatliNo = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  //backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                  overlayColor: Colors.white.withValues(alpha: 0.3),
                ),
                onPressed: yemekCesitleriniYenile,
                child: Image.asset('assets/images/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.redAccent,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  overlayColor: Colors.white.withValues(alpha: 0.3),
                ),
                onPressed: yemekCesitleriniYenile,
                child: Image.asset('assets/images/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            style: TextStyle(
              fontSize: 20,
            ),
            yemekAdlari[yemekNo - 1],
          ),
          SizedBox(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  overlayColor: Colors.white.withValues(alpha: 0.3),
                ),
                onPressed: yemekCesitleriniYenile,
                child: Image.asset('assets/images/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            style: TextStyle(
              fontSize: 20,
            ),
            tatliAdlari[tatliNo - 1],
          ),
          SizedBox(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
