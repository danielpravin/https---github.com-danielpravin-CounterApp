import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Counter Application',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }
  void _resetCounter() {
    setState((){
      counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
          Center(
            child: Text("CLICK COUNTER", style: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),),
          ),
        ),
      body: 
        Center(child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text("$counter", style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold, fontFamily: "")),
            const SizedBox(height: 8),
            const Text("Clicks", style:TextStyle(fontSize: 18)),
            const SizedBox(height: 24),
            Row( // have the buttons on the same line
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton( onPressed: _incrementCounter, child: const Text("Increment")),
                const Text("   ", style:TextStyle(fontSize: 18)),
                ElevatedButton( onPressed: _resetCounter, child: const Text("Reset")),
              ]
            ),
          ],
        ),
      ),
    ); 
  }
}
