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
  final symColor = Color.fromARGB(255, 30, 77, 171);
  final Color secondary= Color(0xFF6cd3cd);

  @override
  void initState() {
    _currentQuantity = widget._indicator;
    super.initState();
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // here the desired height
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
                height: 685,
                color: secondary,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('File One pdf'),
                    const Text(
                        'File Two Pdf'),
                    const Text('File three pdf'),
                    const Text(
                        'We will fight up close, seize the moment and stay in it'),
                    const Text(
                        'It’s either that or meet the business end of a bayonet'),
                    const Text('The code word is ‘Rochambeau,’ dig me?'),
                    Text('Rochambeau!',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 2.0)),
                  ],
                ),
              ),
            ),
           Expanded(
              flex: 15,
              child: Container(
                color: symColor,
                child: Column(children: const [Text("test"), Text("test2")]),
              ),
            )
          ],
        );
      case 0:
        return Text("one widget", style: const TextStyle(color: Colors.black),);
      case 2:
        return Text("two widget", style: const TextStyle(color: Colors.black),);
      case 3:
        return Text("three widget", style: const TextStyle(color: Colors.black),);
      default:
        return Text("default widget", style: const TextStyle(color: Colors.black),);
    }
  }
}