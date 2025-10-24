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
        backgroundColor: Colors.pinkAccent,
        title: Text('Halaman Depan'),
        //  ada tanda array atau list
        actions: [
          Icon(Icons.search),
          SizedBox(width: 5),
          Icon(Icons.person),
          SizedBox(width: 5),
          Icon(Icons.settings),
          SizedBox(width: 5),

        ],
      ),
      body: Container(
        margin: EdgeInsets.all(5), // Memberi margin di semua sisi
        // width: double.infinity,
        // height: double.infinity,
      // color: Colors.greenAccent,
      alignment: Alignment.center,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     // children itu array (ada tanda []
      //     children: [
      //     // Icon(Icons.person),
      //     // SizedBox(width: 10),
      //     // Icon(Icons.account_balance),
      //     // SizedBox(width: 5),
      //     Text("ini adalah data")
      //   ],
      // )
      padding: EdgeInsets.only(right: 50), // Memberi padding spesifik hanya di sisi tertentu
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.pinkAccent,
            Colors.greenAccent,
          ],
        ),
        ),
        child: Text("ini padding untuk didalam container"),
          ),
        );
  }
}

