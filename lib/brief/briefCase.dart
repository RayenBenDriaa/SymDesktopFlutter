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
    _Briefs.add(Brief("assets/images/colortitle.png", "My list Items", _des, "All the answers you need to most common questions.", 1));
    _Briefs.add(Brief( "assets/images/colorpresentation.png","Dialog presentation", _des, "Your sales aids, powerpoint and PDF presentations", 2));
    _Briefs.add(Brief( "assets/images/coloryellow.png","XLS documents", _des, "Upcoming ASCO,ECCB and Spanish Breast Cancer Congress material", 3));
    _Briefs.add(Brief( "assets/images/colorpub.png","Publication", _des, "Pivotal Studies and abstracts about Kadcyla", 4));
    _Briefs.add(Brief( "assets/images/colorcontact.png","My contacts", _des, "Princing, reimboursement pharmacea-econmics & acess", 0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}