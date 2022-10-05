import 'package:flutter/material.dart';

class BriefDetails extends StatefulWidget {
  
  final String _title;
  final String _content;
  final String _description;
  final int _indicator;
  

  const BriefDetails(
       this._title, this._content, this._description, this._indicator, {Key? key}) : super(key: key);

  @override
  State<BriefDetails> createState() => _BriefDetailsState();
}

class _BriefDetailsState extends State<BriefDetails> {
  late int _currentQuantity;
  double? scrolledUnderElevation;
  final Color symColor = const Color(0xFF1e4cab);
  final Color secondary= const Color(0xFF6cd3cd);
  final Color presentationColor = const Color(0xFFF98163);
  final Color XLSdocColor= const Color(0xFFFCCF7A);
  final Color pubColor= const Color(0xFF75ACD8);
  final Color contactColor = const Color(0xFFCEEEE5);


  @override
  void initState() {
    _currentQuantity = widget._indicator;
    super.initState();
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0), // here the desired height
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
      body: Column(
        children: [
          conditionalWidget(widget._indicator),
        ],
      ),
    );
  }
  
  Widget conditionalWidget(int indicatorIndex) {
    switch (indicatorIndex) {
      case 1:
        return Row(
          children: [
            Expanded(
              flex: 85,
              child: Container(
                height: 850,
                color: secondary,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('File One pdf'),
                    Text('File Two Pdf'),
                    Text('File three pdf'),
                    Text(
                        'We will fight up close, seize the moment and stay in it'),
                    Text(
                        'It’s either that or meet the business end of a bayonet'),
                    Text('The code word is ‘Rochambeau,’ dig me?'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                  color: symColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          child: Image.asset(
                            "assets/images/colorpresentation.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "Dialog presentations", "", "", 2);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("Dialog presentations",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          child: Image.asset(
                            "assets/images/coloryellow.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "XLS documents", "", "", 3);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("XLS documents",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          child: Image.asset(
                            "assets/images/colorpub.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "Publications", "", "", 4);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("Publications",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          child: Image.asset(
                            "assets/images/colorcontact.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "My contacts", "", "", 0);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("My contacts",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ])
                    ],
                  )),
            )
          ],
        );
      case 0:
        return Row(
          children: [
            Expanded(
              flex: 85,
              child: Container(
                height: 850,
                color: contactColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                  color: symColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colortitle.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "My list Items", "", "", 1);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("My list Items",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colorpresentation.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "Dialog presentation", "", "", 2);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("Dialog presentation",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/coloryellow.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "XLS documents", "", "", 3);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("XLS documents",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colorpub.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "Publications", "", "", 4);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("Publications",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ])
                    ],
                  )),
            )
          ],
        );
      case 2:
        return Row(
          children: [
            Expanded(
              flex: 85,
              child: Container(
                height: 850,
                color: presentationColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                  color: symColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colortitle.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "My list Items", "", "", 1);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("My list Items",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/coloryellow.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "XLS documents", "", "", 3);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("XLS documents",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colorpub.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "Publications", "", "", 4);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("Publications",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colorcontact.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "My contacts", "", "", 0);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("My contacts",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ])
                    ],
                  )),
            )
          ],
        );
      case 3:
        return Row(
          children: [
            Expanded(
              flex: 85,
              child: Container(
                height: 850,
                color: XLSdocColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                  color: symColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colortitle.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "My list Items", "", "", 1);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("My list Items",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colorpresentation.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "Dialog presentation", "", "", 2);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("Dialog presentation",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colorpub.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "Publications", "", "", 4);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("Publications",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colorcontact.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "My contacts", "", "", 0);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("My contacts",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ])
                    ],
                  )),
            )
          ],
        );
      case 4:
        return Row(
          children: [
            Expanded(
              flex: 85,
              child: Container(
                height: 850,
                color: pubColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                  color: symColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colortitle.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "My list Items", "", "", 1);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("My list Items",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colorpresentation.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "Dialog presentation", "", "", 2);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("Dialog presentation",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/coloryellow.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "XLS documents", "", "", 3);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("XLS documents",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Image.asset(
                            "assets/images/colorcontact.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "My contacts", "", "", 0);
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: const SizedBox(
                                    child: Center(
                                        child: Text("My contacts",
                                            textScaleFactor: 2))),
                              ),
                            ),
                          ],
                        )
                      ])
                    ],
                  )),
            )
          ],
        );
      default:
        return const Text(
          "default widget",
          style: TextStyle(color: Colors.black),
        );
    }
  }
}
