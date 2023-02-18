import 'package:flutter/foundation.dart';
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
  List<int> numbers = [];
  int counter = 0;

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });

    print(numbers);
  }

  bool showTitle = true;
  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showTitle ? const MyLargeTitle() : const Text('Nothing'),
                IconButton(
                    onPressed: toggleTitle,
                    icon: const Icon(Icons.remove_red_eye))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // TODO: implement initState
    // 부모 요소에 의존하는 state를 초기화 해야하는 경우
    super.initState();
    print('init');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if (kDebugMode) {
      print('dispose');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        color: Theme.of(context).textTheme.titleLarge!.color,
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
