import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GamePage(),
    );
  }
}

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        color: Colors.yellow.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 80.0,
                  color: Colors.blue,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ณัฏฐวุฒิ อภินันทกุล',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 20.0, color: Colors.orange),
                        Icon(Icons.star, size: 20.0, color: Colors.orange),
                        Icon(Icons.star, size: 20.0, color: Colors.orange),
                        Icon(Icons.star, size: 20.0, color: Colors.orange),
                        Icon(Icons.star_border,
                            size: 20.0, color: Colors.orange)
                      ],
                    )
                  ],
                )
              ],
            ),
            Center(
                child: Text('${Random().nextInt(100)}',
                    style: TextStyle(fontSize: 150, color: Colors.orange))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {}, child: Text('RANDOM')),
            )
          ],
        ),
      ),
    );
  }
}
