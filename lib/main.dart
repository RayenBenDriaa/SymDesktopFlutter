import 'package:flutter/material.dart';

import 'brief/briefCase.dart';

final List<int> _items = List<int>.generate(51, (int index) => index);
const symColor = Color.fromARGB(255, 30, 77, 171);

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: const AppBarExample(),
    );
  }
}

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  bool shadowColor = false;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // here the desired height
        child: AppBar(
         actions:  [
          IconButton(color:Colors.white,onPressed: () {
            debugPrint("hello");
          }, icon: const Icon(
            Icons.info_outline,
            ),
          )],
          title: const Text(
            'SYMMETRYK',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          scrolledUnderElevation: scrolledUnderElevation,
          backgroundColor: symColor,
        ),
      ),
      body: const Center(
        child: Briefcase(),
      ),
    );
  }
}
