import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Data Siswa"),),
      body: ListView(
        children: [
          Row(
            children: [
              Column(
                children: [Text("Nama Siswa"),
                Text("Altan Naura")],
              )
            ],
          )
        ],


      ),

    );

  }
}
