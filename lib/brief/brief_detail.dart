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
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  late ListModel<int> _list;
  int? _selectedItem;
  late int _nextItem;



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
    super.initState();
    _list = ListModel<int>(
      listKey: _listKey,
      initialItems: <int>[1, 2, 3],
      removedItemBuilder: _buildRemovedItem,
    );
    _nextItem = 4;
  }
   Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: _list[index],
      selected: _selectedItem == _list[index],
      onTap: () {
        setState(() {
          _selectedItem = _selectedItem == _list[index] ? null : _list[index];
        });
      },
    );
  }
  Widget _buildRemovedItem(
      int item, BuildContext context, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: item,
      // No gesture detector here: we don't want removed items to be interactive.
    );
  }
  void _insert() {
    final int index =
        _selectedItem == null ? _list.length : _list.indexOf(_selectedItem!);
    _list.insert(index, _nextItem++);
  }
  void _remove() {
    if (_selectedItem != null) {
      _list.removeAt(_list.indexOf(_selectedItem!));
      setState(() {
        _selectedItem = null;
      });
    }
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
                //lock1
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
                          padding: const EdgeInsets.only(top: 8),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.white),
                            ),
                          ),
                          width: 324,
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
                            icon: const Icon(Icons.autorenew),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.only(top: 8),
                          decoration: const BoxDecoration(
                            border: Border(
                            bottom: BorderSide(color: Colors.white,style: BorderStyle.solid),
                            ),
                          ),
                          height: 70,
                          width: 300,
                          
                          child: const Text(
                            "Refresh tile",
                            style: TextStyle(fontWeight: FontWeight.w100,
                              fontSize: 30,
                            ),
                          )),
                          
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                        margin: const EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                            border: Border(
                            bottom: BorderSide(color: Colors.white,style: BorderStyle.solid),
                            ),
                          ),
                          height: 70,
                          
                          child: const Text(
                            "Sort By",
                            style: TextStyle(fontWeight: FontWeight.w100,
                              fontSize: 30,
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
                              
                            },
                            icon: const Icon(Icons.keyboard_arrow_down),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),
                          Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          width: 150,
                         
                          ), 
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
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          child: IconButton(
                            onPressed: () {
                              
                            },
                            icon: const Icon(Icons.apps),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),
                             Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          width: 10,
                         
                          ), 
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
                height: 848,
                margin: const EdgeInsets.only(top: 3),
                color: contactColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text("Helloo publications")
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
                height: 848,
                margin: const EdgeInsets.only(top: 3),
                color: presentationColor,
                //lock2
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
                          padding: const EdgeInsets.only(top: 8),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.white),
                            ),
                          ),
                          width: 324,
                          height: 70,
                          child: const Text(
                            "Dialog presentations",
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
                            icon: const Icon(Icons.autorenew),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.only(top: 8),
                          decoration: const BoxDecoration(
                            border: Border(
                            bottom: BorderSide(color: Colors.white,style: BorderStyle.solid),
                            ),
                          ),
                          height: 70,
                          width: 300,
                          
                          child: const Text(
                            "Refresh tile",
                            style: TextStyle(fontWeight: FontWeight.w100,
                              fontSize: 30,
                            ),
                          )),
                          
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                        margin: const EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                            border: Border(
                            bottom: BorderSide(color: Colors.white,style: BorderStyle.solid),
                            ),
                          ),
                          height: 70,
                          
                          child: const Text(
                            "Sort By",
                            style: TextStyle(fontWeight: FontWeight.w100,
                              fontSize: 30,
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
                              
                            },
                            icon: const Icon(Icons.keyboard_arrow_down),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),
                          Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          width: 150,
                         
                          ), 
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
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          child: IconButton(
                            onPressed: () {
                              
                            },
                            icon: const Icon(Icons.apps),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),
                             Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          width: 10,
                         
                          ), 
                    ],
                  )],)
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
                height: 848,
                margin: const EdgeInsets.only(top: 3),
                color: XLSdocColor,
                child:  Column(children: [
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
                          padding: const EdgeInsets.only(top: 8),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.white),
                            ),
                          ),
                          width: 324,
                          height: 70,
                          child: const Text(
                            "XLS Documents",
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
                            icon: const Icon(Icons.autorenew),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.only(top: 8),
                          decoration: const BoxDecoration(
                            border: Border(
                            bottom: BorderSide(color: Colors.white,style: BorderStyle.solid),
                            ),
                          ),
                          height: 70,
                          width: 300,
                          
                          child: const Text(
                            "Refresh tile",
                            style: TextStyle(fontWeight: FontWeight.w100,
                              fontSize: 30,
                            ),
                          )),
                          
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                        margin: const EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                            border: Border(
                            bottom: BorderSide(color: Colors.white,style: BorderStyle.solid),
                            ),
                          ),
                          height: 70,
                          
                          child: const Text(
                            "Sort By",
                            style: TextStyle(fontWeight: FontWeight.w100,
                              fontSize: 30,
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
                              
                            },
                            icon: const Icon(Icons.keyboard_arrow_down),
                            style: IconButton.styleFrom(
                                foregroundColor: Colors.white),
                          )),
                          Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          width: 150,
                         
                          ), 
                          Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          child:  IconButton(
              icon: const Icon(Icons.add_circle),
              onPressed: _insert,
              tooltip: 'insert a new item',
            ),),
                             Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          child: IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: _remove,
              tooltip: 'remove the selected item',
            ),),
                             Container(
                         decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                          height: 80,
                          width: 10,
                         ),
                         //listfor3
                          
                          
                    ],
                  ),
                  SizedBox(
                    height: 760,
                    child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _list.length,
            itemBuilder: _buildItem,
          ),
        ),

                  )
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
                height: 848,
                margin: const EdgeInsets.only(top: 3),
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
typedef RemovedItemBuilder<T> = Widget Function(
    T item, BuildContext context, Animation<double> animation);
    class ListModel<E> {
  ListModel({
    required this.listKey,
    required this.removedItemBuilder,
    Iterable<E>? initialItems,
  }) : _items = List<E>.from(initialItems ?? <E>[]);

  final GlobalKey<AnimatedListState> listKey;
  final RemovedItemBuilder<E> removedItemBuilder;
  final List<E> _items;

  AnimatedListState? get _animatedList => listKey.currentState;

  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList!.insertItem(index);
  }

  E removeAt(int index) {
    final E removedItem = _items.removeAt(index);
    if (removedItem != null) {
      _animatedList!.removeItem(
        index,
        (BuildContext context, Animation<double> animation) {
          return removedItemBuilder(removedItem, context, animation);
        },
      );
    }
    return removedItem;
  }

  int get length => _items.length;

  E operator [](int index) => _items[index];

  int indexOf(E item) => _items.indexOf(item);
}

/// Displays its integer item as 'item N' on a Card whose color is based on
/// the item's value.
///
/// The text is displayed in bright green if [selected] is
/// true. This widget's height is based on the [animation] parameter, it
/// varies from 0 to 128 as the animation varies from 0.0 to 1.0.
class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    this.onTap,
    this.selected = false,
    required this.animation,
    required this.item,
  }) : assert(item >= 0);

  final Animation<double> animation;
  final VoidCallback? onTap;
  final int item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline4!;
    if (selected) {
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    }
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        sizeFactor: animation,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: SizedBox(
            height: 80.0,
            child: Card(
              color: Colors.primaries[item % Colors.primaries.length],
              child: Center(
                child: Text('XLS Document $item', style: textStyle),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/// The base class for the different types of items the list can contain.
