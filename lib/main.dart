import 'package:flutter/material.dart';

void main() {
  runApp(Kalkulator());
}

class Kalkulator extends StatelessWidget {
  const Kalkulator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHidden = true;
  TextEditingController nilai1 = TextEditingController();
  TextEditingController nilai2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Coba"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nilai1,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: "Nilai 1",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: nilai2,
            autocorrect: false,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: "Nilai 2",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                      "Hasilnya Kalinya Adalah ${int.parse(nilai1.text) * int.parse(nilai2.text)}")));
            },
            child: Text("HITUNG"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red[900],
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
