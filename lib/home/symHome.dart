import 'package:briefcase/brief/briefCase.dart';
import 'package:flutter/material.dart';




class SymHome extends StatefulWidget {
  const SymHome({Key? key}) : super(key: key);

  @override
  State<SymHome> createState() => _HomeState();
}

class _HomeState extends State<SymHome> {
 

  @override
  void initState() {
 
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(

        children:[
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Briefcase();
                }));
          },
          child: Stack(children: [
            Container(
              margin:EdgeInsets.fromLTRB(40, 60, 30, 20),
              width: 250,
              height: 250,
              child: Image.asset(
                "assets/images/briefcase.png",
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(75, 80, 5,0),
                  height: 250,
                  width: 180,
                  child: Image.asset("assets/images/brand.jpg")
                ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(73, 312, 0, 0),
                child: const Text(
                  "Avastin Briefcase",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 25),
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
        ),
         GestureDetector(
          onTap: () {
            Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Briefcase();
                }));
          },
          child: Stack(children: [
            Container(
              margin:EdgeInsets.fromLTRB(40, 60, 30, 20),
              width: 250,
              height: 250,
              child: Image.asset(
                "assets/images/briefcase.png",
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(75, 80, 5,0),
                  height: 250,
                  width: 180,
                  child: Image.asset("assets/images/brand.jpg")
                ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(73, 312, 0, 0),
                child: const Text(
                  "NoStatik Media",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 25),
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
        ),
      ],)]
      );
  }
}
