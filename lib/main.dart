// Import necessary Flutter libraries
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp()); // Entry point: runs the app starting from MainApp widget
}

// Root widget of the app
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Application', // App title
      theme: ThemeData(
        useMaterial3: true, // Enables Material 3 styling
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), // Sets primary color theme
      ),
      home: const CounterScreen(), // Launches the CounterScreen widget
    );
  }
}

// Main screen where the counter logic and UI reside
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// State class that holds the mutable state (i.e., counter value)
class _CounterScreenState extends State<CounterScreen> {
  int counter = 0; // Counter variable

  // Function to increment the counter
  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  // Function to reset the counter to 0
  void _resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with centered, all-caps title
      appBar: AppBar(
        title: Center(
          child: Text(
            "CLICK COUNTER",
            style: TextStyle(
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      // Body with counter display and two buttons
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the current counter value in large font
            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                fontFamily: "", // Empty string has no effect; can be removed or set to a valid font
              ),
            ),

            const SizedBox(height: 8), // Spacer between counter and label

            // Label below the number
            const Text(
              "Clicks",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 24), // Spacer before buttons

            // Row containing two buttons side by side
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Increment button
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text("Increment"),
                ),

                // Spacing using a Text widget (can be replaced by SizedBox)
                const Text("   ", style: TextStyle(fontSize: 18)),

                // Reset button
                ElevatedButton(
                  onPressed: _resetCounter,
                  child: const Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
