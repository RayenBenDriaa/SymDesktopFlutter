import 'package:flutter/material.dart';

class BriefDetails extends StatefulWidget {
  
  final String _title;
  final String _content;
  final String _description;
  final int _quantity;

  const BriefDetails(
       this._title, this._content, this._description, this._quantity, {Key? key}) : super(key: key);

  @override
  State<BriefDetails> createState() => _BriefDetailsState();
}

class _BriefDetailsState extends State<BriefDetails> {
  late int _currentQuantity;

  @override
  void initState() {
    _currentQuantity = widget._quantity;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
            child: Text(widget._description),
          ),
          Text(widget._content.toString() + " TND", textScaleFactor: 3),
          Text("Exemplaires disponibles : " + _currentQuantity.toString()),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton.icon(
                label: const Text("testbutton", textScaleFactor: 2),
                icon: const Icon(Icons.shopping_basket_rounded),
                onPressed: () {
                  setState(() {
                    _currentQuantity--;
                  });
                }
            ),
          )
        ],
      ),
    );
  }
}