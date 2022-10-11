import 'package:briefcase/testRoutes.dart';
import 'package:flutter/material.dart';

import 'brief/briefCase.dart';
import 'package:window_size/window_size.dart';
import 'dart:io';

const symColor = Color(0xFF1e4cab);

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowMaxSize(const Size(1280, 960));
    setWindowMinSize(const Size(1280, 960));
  }
  runApp(const AppBarApp());
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/test": (BuildContext context) {
          return const TestRouts();
        },
      },
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
        preferredSize: const Size.fromHeight(70.0), // here the desired height
        child: AppBar(
          actions: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                debugPrint("hello");
              },
              icon: const Icon(
                Icons.info_outline,
              ),
            )
          ],
          title: const Text(
            'SYMMETRYK',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: symColor,
        ),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                height: 851,
                width: 1280,
                child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: ThemeData(
                      textTheme: Theme.of(context).textTheme.apply(
                            bodyColor: Colors.white,
                            displayColor: Colors.white,
                          ),
                      colorSchemeSeed: const Color(0xff6750a4),
                      useMaterial3: true,
                    ),
                    initialRoute: '/W1',
                    routes: {
                      '/W1': (context) => Briefcase(),
                    })),
          ],
        ),
      ),
    );
  }
}
