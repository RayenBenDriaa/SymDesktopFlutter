import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class BriefDetails extends StatefulWidget {
  final String _title;
  final String _content;
  final String _description;
  final int _indicator;

  const BriefDetails(
      this._title, this._content, this._description, this._indicator,
      {Key? key})
      : super(key: key);

  @override
  State<BriefDetails> createState() => _BriefDetailsState();
}

class _BriefDetailsState extends State<BriefDetails> {
  final items = List<String>.generate(10, (i) => 'Item ${i + 1}');


  late int _currentQuantity;

  final Color symColor = const Color(0xFF1e4cab);
  final Color secondary = const Color(0xFF6cd3cd);
  final Color itemsColor = const Color(0xFF8BCFD7);
  final Color presentationColor = const Color(0xFFF98163);
  final Color XLSdocColor = const Color(0xFFFCCF7A);
  final Color pubColor = const Color(0xFF75ACD8);
  final Color contactColor = const Color(0xFFCEEEE5);
  String url = "https://www.fluttercampus.com";

  @override
  void initState() {
    _currentQuantity = widget._indicator;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
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
                margin: const EdgeInsets.only(top: 3),
                height: 848,
                color: itemsColor,
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          child: IconButton(
                            onPressed: () {
                              
                            },
                            icon: const Icon(Icons.format_align_left),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),

                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.white),
                            ),
                          ),
                          width: 250,
                          height: 70,
                          child: const Text(
                            "My list items",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w100
                            ),
                          )),
                      Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          child: IconButton(
                            onPressed: () {
                              debugPrint("i refreshed");
                              setState(() {});
                            },
                            icon: const Icon(Icons.refresh_sharp),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                            border: Border(
                            bottom: BorderSide(color: Colors.white,style: BorderStyle.solid),
                            ),
                          ),
                          height: 70,
                          width: 740,
                          child: const Text(
                            "Refresh tile",
                            style: TextStyle(fontWeight: FontWeight.w100,
                              fontSize: 30,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 760,
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];

                        return Dismissible(
                          // Each Dismissible must contain a Key. Keys allow Flutter to
                          // uniquely identify widgets.
                          key: Key(item),
                          // Provide a function that tells the app
                          // what to do after an item has been swiped away.
                          onDismissed: (direction) {
                            // Remove the item from the data source.
                            setState(() {
                              items.removeAt(index);
                            });

                            // Then show a snackbar.
                          },
                          // Show a red background as the item is swiped away.
                          background: Container(color: Colors.red),
                          child: InkWell(
                            onTap: () async {
                              String url = "https://www.fluttercampus.com";
                              var urllaunchable = await canLaunch(
                                  url); //canLaunch is from url_launcher package
                              if (urllaunchable) {
                                await launch(
                                    url); //launch is from url_launcher package to launch URL
                              } else {
                                print("URL can't be launched.");
                              }
                            },
                            child: Text("Open FlutterCampus.com"),
                          ),
                        );
                      },
                    ),
                  ),
                ]),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                  children: const <Widget>[],
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                  children: const <Widget>[],
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                  children: const <Widget>[],
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                  children: const <Widget>[],
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
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
/// The base class for the different types of items the list can contain.
