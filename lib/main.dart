import 'package:flutter/material.dart';

class Player {
  String? name;
  Player({this.name});
}

void main() {
  // root app
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // dart
  int counter = 0;
  void onClicked() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.amber,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: onClicked,
                iconSize: 40,
                icon: Icon(
                  Icons.add_a_photo,
                  color: Colors.amber[900],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
