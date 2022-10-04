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
  final symColor = const Color(0xFF1e4cab);
  final Color secondary= const Color(0xFF6cd3cd);

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
                height: 610,
                color: secondary,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('File One pdf'),
                    Text(
                        'File Two Pdf'),
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
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          child: Image.asset(
                            "assets/images/color4.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              child: const SizedBox(
                                  child: Center(
                                      child: Text("Dialog presentations",
                                          textScaleFactor: 2))),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          child: Image.asset(
                            "assets/images/color1.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              child: const SizedBox(
                                  child: Center(
                                      child: Text("My Contacts",
                                          textScaleFactor: 2))),
                            ),
                          ],
                        )
                      ]),
                      Stack(children: [
                        SizedBox(
                          width: 250,
                          child: Image.asset(
                            "assets/images/color3.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const BriefDetails(
                                      "XSL documents", "", "", 3);
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
                            "assets/images/color2.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              child: const SizedBox(
                                  child: Center(
                                      child: Text("Publications",
                                          textScaleFactor: 2))),
                            ),
                          ],
                        )
                      ])
                      ],)),
            )
          ],
        );
      case 0:
        return const Text("one widget", style: TextStyle(color: Colors.black),);
      case 2:
        return const Text("two widget", style: TextStyle(color: Colors.black),);
      case 3:
        return const Text("three widget", style: TextStyle(color: Colors.black),);
      default:
        return const Text("default widget", style: TextStyle(color: Colors.black),);
    }
  }
}