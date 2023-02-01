import 'package:briefcase/brief/briefCase.dart';
import 'package:briefcase/brief/briefMain.dart';
import 'package:briefcase/brief/brief_2023.dart';
import 'package:briefcase/brief/brief_attributes.dart';
import 'package:flutter/material.dart';


import '../icons/symicons.dart';

class SymHome extends StatefulWidget {
  const SymHome({Key? key}) : super(key: key);

  @override
  State<SymHome> createState() => _HomeState();
}

class _HomeState extends State<SymHome> {
  final List<Briefattribute> _Briefs = [];

  

  
  bool ishoveredSend = false;
  void _incrementEnterhome(PointerEvent details) {
    setState(() {
      
      _Briefs[0].ishoveredHome = true;
      // print(Briefattribute.index);
    });
  }
  void _incrementEnterRefresh(PointerEvent details) {
    setState(() {
    
      _Briefs[0].ishoveredRefresh = true;
     

    });
  }
   void _incrementEnterSend(PointerEvent details) {
    setState(() {
      _Briefs[0].ishoveredSend = true;
    });
  }

  void _incrementExitHome(PointerEvent details) {
    setState(() {
      _Briefs[0].ishoveredHome = false;
    });
  }
   void _incrementExitRefresh(PointerEvent details) {
    setState(() {
      _Briefs[0].ishoveredRefresh = false;
    });
  }
   void _incrementExitSend(PointerEvent details) {
    setState(() {
      _Briefs[0].ishoveredSend = false;
    });
  }
  void _incrementEnterhome1(PointerEvent details) {
    setState(() {
      
      _Briefs[1].ishoveredHome = true;
      // print(Briefattribute.index);
    });
  }
  void _incrementEnterRefresh1(PointerEvent details) {
    setState(() {
      _Briefs[1].ishoveredRefresh = true;
    });
  }

  void _incrementEnterSend1(PointerEvent details) {
    setState(() {
      _Briefs[1].ishoveredSend = true;
    });
  }

  void _incrementExitHome1(PointerEvent details) {
    setState(() {
      _Briefs[1].ishoveredHome = false;
    });
  }
  void _incrementExitRefresh1(PointerEvent details) {
    setState(() {
      _Briefs[1].ishoveredRefresh = false;
    });
  }

  void _incrementExitSend1(PointerEvent details) {
    setState(() {
      _Briefs[1].ishoveredSend = false;
    });
  }


  

  @override
  void initState() {
    _Briefs.add(
        Briefattribute("assets/images/brand.jpg", "avastin briefcase", 2));
    _Briefs.add(
        Briefattribute("assets/images/brand2.png", "NoStatik Media", 4));
    _Briefs.add(
        Briefattribute("assets/images/brand2.png", "Veeva briefcase", 7));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Brief2023()),
              );
              print("clicked");
            },
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(40, 60, 30, 20),
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
                        margin: const EdgeInsets.fromLTRB(60, 35, 5, 0),
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
                  margin: const EdgeInsets.fromLTRB(275, 120, 5, 0),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.blueGrey)),
                  child: MouseRegion(
                    onEnter: _incrementEnterhome,
                    onExit: _incrementExitHome,
                    child: IconButton(
                      color: _Briefs[0].setColorHome(0),
                      padding: const EdgeInsets.all(0),
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
                  margin: const EdgeInsets.fromLTRB(275, 170, 5, 0),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.blueGrey)),
                  child: MouseRegion(
                    onEnter: _incrementEnterRefresh,
                    onExit: _incrementExitRefresh,
                    child: IconButton(
                      color: _Briefs[0].setColorRefresh(0),
                      padding: const EdgeInsets.all(0),
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
                  margin: const EdgeInsets.fromLTRB(275, 220, 5, 0),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.blueGrey)),
                  child: InkWell(
                    onHover: (isHover) {},
                    child: FittedBox(
                      child: MouseRegion(
                    
                        onEnter: _incrementEnterSend,
                        onExit: _incrementExitSend,
                        child: IconButton(
                          color: _Briefs[0].setColorSend(0),
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                              Symicons.Icons_send_letter_icon_120x120),
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
                return const Briefcase();
              }));
            },
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(40, 60, 30, 20),
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
                        margin: const EdgeInsets.fromLTRB(60, 35, 5, 0),
                        height: 350,
                        width: 210,
                        child: Image.asset(_Briefs[1].image)),
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
                  margin: const EdgeInsets.fromLTRB(275, 120, 5, 0),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.blueGrey)),
                  child: MouseRegion(
                    onEnter: _incrementEnterhome1,
                    onExit: _incrementExitHome1,
                    child: IconButton(
                      color: _Briefs[1].setColorHome(1),
                      padding: const EdgeInsets.all(0),
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
                  margin: const EdgeInsets.fromLTRB(275, 170, 5, 0),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.blueGrey)),
                  child: MouseRegion(
                    onEnter: _incrementEnterRefresh1,
                    onExit: _incrementExitRefresh1,
                    child: IconButton(
                      color: _Briefs[1].setColorRefresh(1),
                      padding: const EdgeInsets.all(0),
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
                  margin: const EdgeInsets.fromLTRB(275, 220, 5, 0),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.blueGrey)),
                  child: InkWell(
                    onHover: (isHover) {},
                    child: FittedBox(
                      child: MouseRegion(
                        onEnter: _incrementEnterSend1,
                        onExit: _incrementExitSend1,
                        child: IconButton(
                          color: _Briefs[1].setColorSend(1),
                          padding: const EdgeInsets.all(0),
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
        
        ],
      )
    ]);
  }
}
