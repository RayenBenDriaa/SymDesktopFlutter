import 'package:briefcase/LoginView.dart';
import 'package:briefcase/brief/briefCase.dart';
import 'package:briefcase/home/SettingsDialog.dart';
import 'package:briefcase/home/symhome.dart';
import 'package:briefcase/testRoutes.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'dart:io';
import 'brief/briefMain.dart';

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
      /*  SplashView(
                          backgroundColor: symColor,
                          showStatusBar: true,
                          backgroundImageDecoration: BackgroundImageDecoration(
                              image: AssetImage("assets/images/SymSplash.png")),
                          done: Done(LoginDemo()),
                        ); */
      home: LoginDemo(),
       
      routes: {
        "/test": (BuildContext context) {
          return const TestRouts();
        },
        "/r":(BuildContext context) {
          return const BriefMain();
        },
        "/s":(BuildContext context)  {
          return const SymHome();
        },
        "/briefcase":(BuildContext context)  {
          return const Briefcase();
        },
        "/settings":(BuildContext context)  {
          return MyApp();
        },
       
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Open Sans',
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


