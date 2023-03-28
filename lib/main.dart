// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  double tamanho = 300;
  double r = 200;
  double g = 200;
  double b = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (tamanho <= 50) {
                    tamanho = 50;
                  } else {
                    tamanho = tamanho - 50;
                  }
                });
              },
              icon: const Icon(Icons.remove)),
          IconButton(
              onPressed: () {
                setState(() {
                  tamanho = 50;
                });
              },
              icon: const Text('S')),
          IconButton(
              onPressed: () {
                setState(() {
                  tamanho = 300;
                });
              },
              icon: const Text('M')),
          IconButton(
              onPressed: () {
                setState(() {
                  tamanho = 500;
                });
              },
              icon: const Text('L')),
          IconButton(
              onPressed: () {
                setState(() {
                  if (tamanho >= 500) {
                    tamanho = 500;
                  } else {
                    tamanho = tamanho + 50;
                  }
                });
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Column(children: [
        Center(
          child: Icon(
            Icons.alarm,
            size: tamanho,
            color: Color.fromRGBO(r.toInt(), g.toInt(), b.toInt(), 1),
          ),
        ),
        Slider(
            activeColor: Colors.red,
            min: 0,
            max: 255,
            value: r.toDouble(),
            onChanged: (double value) {
              setState(() {
                r = value;
              });
            }),
        Slider(
            activeColor: Colors.green,
            min: 0,
            max: 255,
            value: g.toDouble(),
            onChanged: (double value) {
              setState(() {
                g = value;
              });
            }),
        Slider(
            activeColor: Colors.blue,
            min: 0,
            max: 255,
            value: b.toDouble(),
            onChanged: (double value) {
              setState(() {
                b = value;
              });
            })
      ]),
    );
  }
}
