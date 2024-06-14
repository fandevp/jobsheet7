import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final GlobalKey<StateTeksUtama> key = GlobalKey<StateTeksUtama>();

  TeksUtama() : super(key: GlobalKey<StateTeksUtama>());

  @override
  StateTeksUtama createState() => StateTeksUtama();
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Affan',
    'Suripto',
    'Rizka',
    'Linda',
    'Yeza',
  ];
  var listWarna = [
    Color.fromARGB(255, 78, 220, 12),
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.cyan[50],
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            offset: Offset(35.0, 30.0),
            blurRadius: 5,
          )
        ],
        border: Border.all(
          color: Colors.blue,
          width: 5,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Apa kabar',
            textDirection: TextDirection.ltr,
          ),
          Text(
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(MaterialApp(
    title: 'Halo Dunia',
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        title: const Text(
          'Halo Dunia',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20), // Add some space from the top
            teksUtama,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Random',
        onPressed: () => teksUtama.key.currentState?.incrementIndex(),
        child: const Icon(Icons.refresh),
      ),
    ),
  ));
}
