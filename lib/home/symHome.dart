import 'package:briefcase/brief/briefCase.dart';
import 'package:briefcase/brief/briefMain.dart';
import 'package:flutter/material.dart';

import '../icons/symicons.dart';

class SymHome extends StatefulWidget {
  const SymHome({Key? key}) : super(key: key);

  @override
  State<SymHome> createState() => _HomeState();
}

class _HomeState extends State<SymHome> {
  bool ishoveredHome = false;
  bool ishoveredRefresh = false;
  bool ishoveredSend = false;
  void _incrementEnterhome(PointerEvent details) {
    setState(() {
      ishoveredHome = true;
    });
  }
  void _incrementEnterRefresh(PointerEvent details) {
    setState(() {
      ishoveredRefresh = true;
    });
  }
   void _incrementEnterSend(PointerEvent details) {
    setState(() {
      ishoveredSend = true;
    });
  }

  void _incrementExitHome(PointerEvent details) {
    setState(() {
      ishoveredHome = false;
    });
  }
   void _incrementExitRefresh(PointerEvent details) {
    setState(() {
      ishoveredRefresh = false;
    });
  }
   void _incrementExitSend(PointerEvent details) {
    setState(() {
      ishoveredSend = false;
    });
  }

  Color setColorHome() {
    if (ishoveredHome) {
      return Colors.white;
    }
    return Colors.black;
  }
  
  Color setColorRefresh() {
    if (ishoveredRefresh) {
      return Colors.white;
    }
    return Colors.black;
  }
  
  Color setColorSend() {
    if (ishoveredSend) {
      return Colors.white;
    }
    return Colors.black;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Briefcase();
              }));
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 60, 30, 20),
                  width: 250,
                  height: 250,
                  child: Image.asset(
                    "assets/images/briefcase.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(60, 35, 5, 0),
                        height: 350,
                        width: 210,
                        child: Image.asset("assets/images/brand.jpg")),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(73, 312, 0, 0),
                  child: const Text(
                    "Avastin Briefcase",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        fontSize: 25),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  width: 36,
                  height: 36,
                  margin: EdgeInsets.fromLTRB(275, 120, 5, 0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  border: Border.all(color: Colors.blueGrey)),
                  child: MouseRegion(
                    onEnter: _incrementEnterhome,
                    onExit: _incrementExitHome,
                    child: IconButton(
                      color: setColorHome(),
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: const Icon(Symicons.Icons_home_icon_120x120),
                      style: IconButton.styleFrom(hoverColor: symColor),
                      iconSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 36,
                  height: 36,
                  margin: EdgeInsets.fromLTRB(275, 170, 5, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.blueGrey)),
                  child: MouseRegion(
                    onEnter: _incrementEnterRefresh,
                    onExit: _incrementExitRefresh,
                    child: IconButton(
                      color: setColorRefresh(),
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: const Icon(Symicons.Icons_refresh_icon_120x120),
                      style: IconButton.styleFrom(hoverColor: symColor),
                      iconSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 36,
                  height: 36,
                  margin: EdgeInsets.fromLTRB(275, 220, 5, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.blueGrey)),
                  child: InkWell(
                    onHover: (isHover) {},
                    child: FittedBox(
                      child: MouseRegion(   
                        onEnter: _incrementEnterSend,
                        onExit: _incrementExitSend,
                        child: IconButton(
                          color: setColorSend(),
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon:
                              const Icon(Symicons.Icons_send_letter_icon_120x120),
                          style: IconButton.styleFrom(hoverColor: symColor),
                          iconSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Briefcase();
              }));
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 60, 30, 20),
                  width: 250,
                  height: 250,
                  child: Image.asset(
                    "assets/images/briefcase.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(60, 35, 5, 0),
                        height: 350,
                        width: 210,
                        child: Image.asset("assets/images/brand2.png")),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(73, 312, 0, 0),
                  child: const Text(
                    "NoStatik Media",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        fontSize: 25),
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
