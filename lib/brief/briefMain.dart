import 'package:briefcase/icons/symicons.dart';
import 'package:flutter/material.dart';
import 'briefCase.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

const symColor = Color(0xFF1e4cab);

final NavigationService navService = NavigationService();

class GlobalContextService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class BriefMain extends StatefulWidget {
  const BriefMain({super.key});

  @override
  State<BriefMain> createState() => _BriefMain();
}

class _BriefMain extends State<BriefMain> {
  String? dropdownValue;
  bool shadowColor = false;
  var _popupMenuItemIndex = 0;
  double? scrolledUnderElevation;
  _onMenuItemSelected(int value) {
    setState(() {
      _popupMenuItemIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0), // here the desired height
        child: AppBar(
         actions: [
          Row(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Symicons.Icons_small_bottom_arrow_icon_120x120,color: Colors.white,),
                    elevation: 16,
                    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),),
                    underline: Container(
                      height: 0,

                      color: Color.fromARGB(255, 35, 13, 96),
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>[
                      'Choose your briefcase',
                      'Briefcase init',
                      'Briefcase 1',
                      'Briefcase 2'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Symicons.Icons_download_icon_120x120),
                    style: IconButton.styleFrom(foregroundColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Symicons.Icons_survey_icon_120x120),
                    style: IconButton.styleFrom(foregroundColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Symicons.Icons_tag_list_icon_120x120),
                      style: IconButton.styleFrom(foregroundColor: Colors.white)),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Symicons.Icons_favorites_list_icon_120x120),
                    style: IconButton.styleFrom(foregroundColor: Colors.white)
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                   child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Symicons.Icons_config_icon_120x120),
                    style: IconButton.styleFrom(foregroundColor: Colors.white)
                                 ),
                 ),

              // PopupMenuButton(
              //   icon: Icon(Icons.more_vert),
              //   itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              //     const PopupMenuItem(
              //       child: ListTile(
              //         leading: Icon(Icons.add),
              //         title: Text('Item 1'),
              //       ),
              //     ),
              //     const PopupMenuItem(
              //       child: ListTile(
              //         leading: Icon(Icons.anchor),
              //         title: Text('Item 2'),
              //       ),
              //     ),
              //     const PopupMenuItem(
              //       child: ListTile(
              //         leading: Icon(Icons.article),
              //         title: Text('Item 3'),
              //       ),
              //     ),
              //     const PopupMenuDivider(),
              //     const PopupMenuItem(child: Text('Item A')),
              //     const PopupMenuItem(child: Text('Item B')),
              //   ],
              // ),

             
            ],
          ),
        ],
          title:   IconButton(
                  onPressed: () {},
                  icon: const Icon(Symicons.Icons_search_icon_120x120),
                  style: IconButton.styleFrom(foregroundColor: Colors.white)
                ),
          leading: InkWell(
            child: Image.asset(
              "assets/images/symmetryk.png",
              fit: BoxFit.fill,
            ),
            onTap: () {
              navService.goBack();
            },
          ),
          backgroundColor: symColor,
        ),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                height: 851,
                width: 1280,
                child: MaterialApp(
                    navigatorKey: NavigationService.navigationKey,
                    onGenerateRoute: (RouteSettings settings) {
                      switch (settings.name) {
                        case '/briefback':
                          return MaterialPageRoute(
                              builder: (context) => const Briefcase());

                        default:
                          return null;
                      }
                    },
                    debugShowCheckedModeBanner: false,
                    theme: ThemeData(
                      textTheme: Theme.of(context).textTheme.apply(
                            bodyColor: Colors.white,
                            displayColor: Colors.white,
                          ),
                      colorSchemeSeed: const Color(0xff6750a4),
                      useMaterial3: true,
                    ),
                    initialRoute: '/W1',
                    routes: {
                      '/W1': (context1) => const Briefcase(),
                    })),
          ],
        ),
      ),
    );
  }
}
