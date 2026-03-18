import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final int _counter = 0;
  String currentFortuneIndex = "";

  final _fortuneList = [
    "You will have a great day!",
    "Your hard work will pay off.",
    "Good things are coming your way.",
    "You will find happiness in unexpected places.",
    "Your kindness will be rewarded.",
  ];

  // void _incrementCounter() {
  //   setState(() {});
  //   _counter++;
  // }

  void _randamFortune() {
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);

    log(fortune);

    setState(() {
      currentFortuneIndex = _fortuneList[fortune];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Image.asset(
              "assets/images/fortune_cookie.png",
              width: 200,
              height: 200,
            ),
            Text(
              "Your fortune is:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  currentFortuneIndex,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _randamFortune,
              child: Text("Get Fortune"),
            ),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randamFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
    );
  }
}
