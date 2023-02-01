// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:briefcase/LoginSplash.dart';
import 'package:briefcase/brief/briefMain.dart';
import 'package:flutter/material.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  bool _emailPressed = false;
  bool _passwordPressed = false;
  bool phase1 = true;
  bool phase2 = false;
  Color loginColor = Color(0xff92D2D9);
  String _loginText = ' Login to your account ';

  Color textcolor = Color(0xff92D2D9);
  String _buttonText = '         Next         ';

  bool isChecked = false;
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

    return Scaffold(
      backgroundColor: Color(0xFF1E4CAB),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 175),
              child: Center(
                child: Image.asset('assets/images/Symlogo2.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 475),
              child: Center(
                  child: // Note: Same code is applied for the TextFormField as well
                      TextField(
                onTap: () {
                  setState(() {
                    _emailPressed = !_emailPressed;
                  });
                },
                decoration: InputDecoration(
                  suffixIcon: _emailPressed
                      ? Image.asset('assets/images/emailico.png')
                      : null,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF92D2D9)),
                  ),
                  hintText: 'E-mail Address',
                  hintStyle: TextStyle(color: Colors.white38),
                ),
              )),
            ),
            phase2 == true
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 475),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      onTap: () {
                        setState(() {
                          _passwordPressed = !_passwordPressed;
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: _passwordPressed
                            ? Image.asset('assets/images/passwordico.png')
                            : null,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white38),
                      ),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: MouseRegion(
                      onEnter: (PointerEvent details) {
                        setState(() {
                          textcolor = Colors.white;
                          _buttonText = ' To the login page ';
                        });
                      },
                      onExit: (PointerEvent details) {
                        setState(() {
                          textcolor = Color(0xff92D2D9);
                          _buttonText = '         Next         ';
                        });
                      },
                      child: OutlinedButton(
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(
                                Size(212.75, 40.25)),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered)) {
                                  return Color(0xff92D2D9);
                                }
                                return null; // Use the component's default.
                              },
                            ),
                          ),
                          onPressed: () {
                            debugPrint('Next clicked');

                            setState(() {
                              phase1 = false;
                              phase2 = true;
                            });
                          },
                          child: Text(
                            _buttonText,
                            style: TextStyle(color: textcolor),
                          )),
                    ),
                  ),
            SizedBox(
              height: 50,
            ),
            phase2 == true
                ? MouseRegion(
                    onEnter: (PointerEvent details) {
                      setState(() {
                        loginColor = Colors.white;
                        _loginText = '      Get started     ';
                      });
                    },
                    onExit: (PointerEvent details) {
                      setState(() {
                        loginColor = Color(0xff92D2D9);
                        _loginText = ' Login to your account ';
                      });
                    },
                    child: OutlinedButton(
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(     
                            Size(212.75, 40.25)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Color(0xff92D2D9);
                            }
                            return null; // Use the component's default.
                          },
                        ),
                      ),
                      onPressed: () {
                        debugPrint('Login clicks');
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return LoginSplash();
                        }));
                       
                      },
                      child: Text(
                        _loginText,
                        style: TextStyle(color: loginColor),
                      ),
                    ),
                  )
                : SizedBox(
                    height: 20,
                  ),
            SizedBox(
              height: 130,
            ),
            Row(
              children: [
                phase2 == true
                    ? Padding(
                        padding: EdgeInsets.only(left: 487),
                        child: Text(
                          'Remember me ',
                          style: TextStyle(color: Colors.white54),
                        ))
                    : Container(
                        width: 487,
                      ),
                phase2 == true
                    ? Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Color(0xff6C94E6)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      )
                    : Container(
                        width: 30,
                      ),
                Padding(
                  padding: EdgeInsets.only(left: 65),
                  child: InkWell(
                    onTap: () {
                      //TODO FORGOT PASSWORD SCREEN GOES HERE
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white54,
                          fontSize: 15,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                Text(' ?')
              ],
            ),
            phase2 == true
                ? Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all<Size>(
                              Size(212.75, 40.25)),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color(0xff92D2D9))),
                      onPressed: () {
                        debugPrint('Azure clicked');
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return LoginSplash();
                        }));
                      },
                      child: const Text(
                        'Login with Azure AD',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                : SizedBox(
                    width: 20,
                  ),
            phase2 == true
                ? Padding(
                    padding: EdgeInsets.only(top: 38),
                    child: Text(
                      '© 2023 Symmetryk GmbH. All rights reserved',
                      style: TextStyle(color: Colors.white54, fontSize: 10),
                    ))
                : Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Text(
                      '© 2023 Symmetryk GmbH. All rights reserved',
                      style: TextStyle(color: Colors.white54, fontSize: 10),
                    ))
          ],
        ),
      ),
    );
  }
}
