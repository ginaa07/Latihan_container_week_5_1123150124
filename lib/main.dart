import 'package:flutter/material.dart';

//step 1 void main
void main() {
  runApp(MyApp());
}

//step bikin statelsswiget untuk material app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "Latihan Container",
    debugShowCheckedModeBanner: false, 
    home: Halaman(),
    );
  }
}

//page (yg dipanggil dari myapp)
class Halaman extends StatelessWidget {
  const Halaman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 44, 151),
        title: Text('Halaman Depan'),
        //  ada tanda array atau list
        actions: [
          Icon(Icons.person),
          SizedBox(width: 5),
          Icon(Icons.settings),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}