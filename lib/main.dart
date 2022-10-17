import 'package:briefcase/testRoutes.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'dart:io';
import 'brief/briefMain.dart';
import 'package:google_fonts/google_fonts.dart';

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
        "/":(BuildContext context) {
          return const BriefMain();
        }
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
      
    );
  }
}


