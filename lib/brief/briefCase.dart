import 'package:flutter/material.dart';

import 'brief_info.dart';

class Briefcase extends StatefulWidget {
  const Briefcase({Key? key}) : super(key: key);

  @override
  State<Briefcase> createState() => _HomeState();
}

class _HomeState extends State<Briefcase> {
  final List<Brief> _Briefs = [];

  final String _des = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
      "sed do eiusmod tempor incididunt ut "
      "labore et dolore magna aliqua. Ut enim ad minim veniam, "
      "quis nostrud exercitation ullamco laboris nisi ut "
      "aliquip ex ea commodo consequat. Duis aute irure dolor "
      "in reprehenderit in voluptate velit esse cillum dolore "
      "eu fugiat nulla pariatur. Excepteur sint occaecat "
      "cupidatat non proident, sunt in culpa qui officia "
      "deserunt mollit anim id est laborum.";

  @override
  void initState() {
    _Briefs.add(Brief("assets/images/color2.png", "My list Items", _des, "All the answers you need to most common questions.", 1));
    _Briefs.add(Brief( "assets/images/color3.png","Dialog presentation", _des, "Your sales aids, powerpoint and PDF presentations", 2));
    _Briefs.add(Brief( "assets/images/color2.png","XSL documents", _des, "Upcoming ASCO,ECCB and Spanish Breast Cancer Congress material", 3));
    _Briefs.add(Brief( "assets/images/color4.png","Publication", _des, "Pivotal Studies and abstracts about Kadcyla", 4));
    _Briefs.add(Brief( "assets/images/color3.png","My contacts", _des, "Princing, reimboursement pharmacea-econmics & acess", 5));
    _Briefs.add(Brief( "assets/images/color1.png","My list Items", _des, "All the answers you need to most common questions.", 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2.75,
        mainAxisSpacing: 300.0,
        crossAxisSpacing: 10.0,
      ),
      itemCount: _Briefs.length,
      itemBuilder: (BuildContext context,int index) {
        return BriefInfo( _Briefs[index].image,_Briefs[index].title, _Briefs[index].content,
            _Briefs[index].description, _Briefs[index].indicator);
      },
    );
  }
}