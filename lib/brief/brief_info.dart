import 'package:flutter/material.dart';

import 'brief_detail.dart';

class BriefInfo extends StatelessWidget {
  final String _title;
  final String _content;
  final String _description;
  final int _indicator;
  final String _image;


  BriefInfo(
      this._image, this._title, this._content, this._description, this._indicator);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return BriefDetails(_title, _content, _description, _indicator);
            }));
          },
          child: Stack(
            children: [
              SizedBox(
              width: 1500,
              child: Image.asset(_image, fit: BoxFit.fill,),
            ),
              Container(
                margin: const EdgeInsets.only(top: 70,left: 25,right: 20),
                child: Column(
                  children: [
                    Center(child: Text(_title, textScaleFactor: 2)),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      _description,
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    )),
                  ],
                ),
              )
           
            ],
          )),
    );
  }
}

class Brief {
  final String image;
  final String title;
  final String content;
  final String description;
  final int indicator;

  Brief(this.image, this.title, this.content, this.description, this.indicator);

  @override
  String toString() {
    return 'Brief{title: $title, content: $content, description: $description, quantity: $indicator}';
  }
}
