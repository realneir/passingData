// ignore_for_file: prefer_const_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, unnecessary_new, unnecessary_const, must_be_immutable

import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  late String text;
  Page2(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onHorizontalDragUpdate: (DragUpdateDetails dragUpdateDetails) =>
            Navigator.pop(context),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigoAccent[700],
            title: const Text(
              "Second Page",
              style: TextStyle(fontSize: 22),
            ),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            titleSpacing: 2,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
