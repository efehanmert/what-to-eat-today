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

class YemekSayfasi extends StatelessWidget {
  const YemekSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/corba_1.jpg'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/yemek_1.jpg'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/tatli_1.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
