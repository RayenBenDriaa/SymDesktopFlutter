import 'package:briefcase/icons/symicons.dart';
import 'package:flutter/material.dart';

import 'brief_detail.dart';

class BriefInfo extends StatefulWidget {
  final String _title;
  final String _content;
  final String _description;
  final int _indicator;
  final String _image;
  const BriefInfo(
      this._image, this._title, this._content, this._description, this._indicator);

  @override
  State<BriefInfo> createState() => _BriefInfoState();
}

class _BriefInfoState extends State<BriefInfo> {
  var varicon = Symicons.Icons_297;

  String s ="Symicons.Icons_297";

    @override
  void initState() {
    _icons();  
    
    super.initState();
  }

  IconData _icons(){
    switch (widget._indicator){
      case 1 : 
      return varicon = Symicons.Icons_hamburger_menu_icon_v2_120x120;
      case 2: 
      return varicon = Symicons.Icons_dialog_icon_120x120;
      case 3 :
      return varicon = Symicons.Icons_xls_file_icon_120x120;
      case 4:
      return varicon = Symicons.Icons_files_icon_120x120;
      case 0 :
      return varicon = Symicons.Icons_add_users_icon_120x120;
      default: 
      return varicon = Symicons.Icons_146;


      
      
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return BriefDetails(widget._title, widget._content, widget._description, widget._indicator);
            }));
          },
          child: Stack(
            children: [
              SizedBox(
                width: 1500,
                child: Image.asset(
                  widget._image,
                  fit: BoxFit.fill,
                ),
              ),
                const SizedBox(
                width: 1500,
                height: 500,
                
              ),
              Container(
                margin: const EdgeInsets.only(top: 70, left: 25, right: 20),
                child: Column(
                  children: [
                    Center(child: Text(widget._title, textScaleFactor: 2)),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      widget._description,
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
