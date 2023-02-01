// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:briefcase/icons/symicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Brief2023 extends StatefulWidget {
  const Brief2023({Key? key}) : super(key: key);

  @override
  State<Brief2023> createState() => _HomeState();
}

class _HomeState extends State<Brief2023> {
  final _controller = ValueNotifier<bool>(false);
  bool _checked = false;
  bool isSwitchOn = false;
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAligment = -1.0;
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        if (_controller.value) {
          _checked = true;
        } else {
          _checked = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 122,
                  width: double.infinity,
                  color: const Color(0xFFAECC9B),
                  child: _selectedIndex == 1
                      ? Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 15, right: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Dialog Presentations",
                                style: TextStyle(
                                    fontSize: 28.75,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF),
                                    letterSpacing: 1),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "All the answers you need to your clients most common questions.",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18.4,
                                    color: Colors.white60),
                              ),
                            ],
                          ),
                        )
                      : Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 15, right: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Presentations 2023",
                                style: TextStyle(
                                    fontSize: 28.75,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF),
                                    letterSpacing: 1),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "All the answers you need to your clients most common questions.",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18.4,
                                    color: Colors.white60),
                              ),
                            ],
                          ),
                        )),
              Expanded(
                child: Container(
                  color: const Color(0xFFF3FCED),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Color(0xFFAECC9B),
                                style: BorderStyle.solid),
                          ),
                        ),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                width: 120,
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  dropdownColor: Color(0xffF3FCED),
                                  value: "Sort By",
                                  icon: const Icon(
                                    Symicons
                                        .Icons_small_bottom_arrow_icon_120x120,
                                    color: Color(0xE63C465D),
                                    size: 16,
                                  ),
                                  elevation: 0,
                                  style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 21.2,
                                      color: Color(0xE63C465D)),
                                  underline: Container(
                                    height: 0,
                                    color: Color(0xE63C465D),
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {});
                                  },
                                  items: <String>[
                                    'Sort By',
                                    'Alphabitique ',
                                    'Recent',
                                    'Most Clicked'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 22),
                                child: Stack(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Image.asset(
                                          'assets/images/icolist.png',
                                          width: 22,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Image.asset(
                                          'assets/images/icogrid.png',
                                          width: 22,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FlutterSwitch(
                                    toggleSize: 30,
                                    toggleColor: Color(0xFFAECC9B),
                                    value: isSwitchOn,
                                    onToggle: (value) {
                                      setState(() {
                                        isSwitchOn = value;
                                      });
                                    },
                                    borderRadius: 20,
                                    switchBorder: Border.all(
                                      color: Color.fromARGB(118, 174, 204, 155),
                                      width: 1.5,
                                    ),
                                    activeColor: Colors.transparent,
                                    inactiveColor: Colors.transparent,
                                    width: 70.0,
                                    height: 40.0,
                                  ),
                                ]),
                              ),
                            ]),
                      ),
                      Row(
                        children: [
                          isSwitchOn == true
                              //GridView MODE
                              ? Text(
                                  ' GridView',
                                  style: TextStyle(color: Colors.black),
                                )
                              //ListView MODE
                              : Text(
                                  ' ListView',
                                  style: TextStyle(color: Colors.black),
                                )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 317,
                  child: Stack(children: [
                    SizedBox(
                      height: 317,
                      child: InkWell(
                        onTap: (() {
                          setState(() {
                            _selectedIndex = 1;
                          });
                          print(_selectedIndex);
                        }),
                        child: Image.asset(
                          "assets/images/SideBarDialog.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
