// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'brief/briefMain.dart';

class LoginSplash extends StatefulWidget {
  @override
  _LoginSplashState createState() => _LoginSplashState();
}

class _LoginSplashState extends State<LoginSplash>
    with TickerProviderStateMixin {
  bool _ready = false;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });
    controller.forward().then((f) => readyToHomePage());
    
    super.initState();
  }
  readyToHomePage() {
    
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return BriefMain();
    }));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Color(0xff6C94E6);
    }

    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xff1E4CAB), Color(0xff2D5BBA)],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Center(
                child: Image.asset('assets/images/Symlogo4.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              width: 250,
              height: 1.8,
              child: LinearProgressIndicator(
                
                backgroundColor: Color(0xff426FC9),
                valueColor: AlwaysStoppedAnimation(Color(0xff92D2D9)),
                value: controller.value,
              ),
            ),
           
            Padding(
                padding: EdgeInsets.only(top: 380),
                child: Text(
                  '© 2023 Symmetryk GmbH. All rights reserved',
                  style: TextStyle(color: Colors.white54, fontSize: 10),
                )),
          ],
        ),
      ),
    );
  }
  

}
