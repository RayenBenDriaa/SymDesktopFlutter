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
    return GestureDetector(
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
              margin: EdgeInsets.fromLTRB(75, 80, 5, 15),
              height: 250,
              width: 180,
              child: Image.asset("assets/images/brand.jpg")
            ),
           
          ],
        ),]
      ),
    );
  }
}