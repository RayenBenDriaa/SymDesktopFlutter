import 'package:flutter/material.dart';

import 'brief_info.dart';

class Briefcase extends StatefulWidget {
  const Briefcase({Key? key}) : super(key: key);

  @override
  State<Briefcase> createState() => _HomeState();
}

class _HomeState extends State<Briefcase> {
  final List<Brief> _Briefs = [];

  final String _des = "";

  @override
  void initState() {
    _Briefs.add(Brief("assets/images/colortitlenew.png", "", _des, "", 1));
    _Briefs.add(Brief( "assets/images/colorpresentationnew.png","", _des, "", 2));
    _Briefs.add(Brief( "assets/images/coloryellownew.png","", _des, "", 3));
    _Briefs.add(Brief( "assets/images/colorpubnew.png","", _des, "", 4));
    _Briefs.add(Brief( "assets/images/colorcontactnew.png","", _des, "", 0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.only(top: 200,left: 280,right: 20),
        width: 680,
        height: 500,
        child: Image.asset(
          "assets/images/fond_copy.png",
          fit: BoxFit.fill,
        ),
      ),
      Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10,left: 20,right: 20),
            height: 560,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.7,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 5.0,
              ),
              itemCount: 3,
              itemBuilder: (BuildContext context,int index) {
                return BriefInfo( _Briefs[index].image,_Briefs[index].title, _Briefs[index].content,
                    _Briefs[index].description, _Briefs[index].indicator);
              },
            ),
          ),
          Container(
            height: 250,
            margin: const EdgeInsets.only(top: 18,left: 20,right: 20),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: 2,
              itemBuilder: (BuildContext context,int index) {
                return BriefInfo( _Briefs[index+3].image,_Briefs[index+3].title, _Briefs[index+3].content,
                    _Briefs[index+3].description, _Briefs[index+3].indicator);
              },
            ),
          ),
        ],
      ),]
    );
  }
}