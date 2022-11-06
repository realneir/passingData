// ignore_for_file: prefer_const_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, unnecessary_new, unnecessary_const, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'Page2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final textControll = TextEditingController();
  String text = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[700],
        elevation: 15.0,
        title: const Text(
          "First Page",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.start,
                controller: textControll,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    hintText: '[Some hint Text...]',
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: MaterialButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                elevation: 5.0,
                minWidth: 120,
                height: 50,
                color: Colors.indigoAccent[700],
                child: const Text('Send',
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () {
                  setState(() {
                    text = textControll.text;
                  });
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Page2(text)));
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
