import 'package:flutter/material.dart';


class Briefattribute {
  final String image;
  final String title;
  final int nbrfiles;
  static late int index;
  bool ishoveredHome = false;
  bool ishoveredRefresh = false;
  bool ishoveredSend = false;

  Briefattribute(this.image, this.title, this.nbrfiles);

  ///try implementing  functions setColorHome ,setColorRefresh , setColorSend  here instead of symHome

  @override
  String toString() {
    return 'Brief{title: $title}';
  }
 
  Color setColorHome(int counter) {
    index = counter;

    if (ishoveredHome) {
      return Colors.white;
    }
    return Colors.black;
  }

  Color setColorRefresh(int counter) {
    index = counter;
    if (ishoveredRefresh) {
      return Colors.white;
    }
    return Colors.black;
  }

  Color setColorSend(int counter) {
    index = counter;
    if (ishoveredSend) {
      return Colors.white;
    }
    return Colors.black;
  }
}
