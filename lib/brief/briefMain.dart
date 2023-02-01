import 'package:briefcase/home/symhome.dart';
import 'package:briefcase/icons/symicons.dart';
import 'package:flutter/material.dart';
import 'briefCase.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

const symColor = Color(0xFF1E4CAB);
const String assetName = 'assets/symmetryk.svg';


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
  bool appBarState = true;
  String? dropdownValue;
  bool shadowColor = false;
  double leadingWidthVar = 272;
  var _popupMenuItemIndex = 0;
  double? scrolledUnderElevation;
  _onMenuItemSelected(int value) {
    setState(() {
      _popupMenuItemIndex = value;

      if (appBarState) {
        leadingWidthVar = 110;
      } else {
        leadingWidthVar = 272;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(79.0), // here the desired height
        child: AppBar(
          leadingWidth: 272,
          toolbarHeight: 65,
        
          actions: [
            WindowTitleBarBox(
              child: MoveWindow(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 2, 10, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Symicons.Icons_search_icon_120x120),
                        style:
                            IconButton.styleFrom(foregroundColor: Colors.white),
                        iconSize: 32,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(182, 12, 0, 0),
                      child: SizedBox(
                        width: 167,
                        child: DropdownButton<String>(
                          isExpanded: true,

                          dropdownColor: symColor,
                          value: dropdownValue ?? "Most used doc",
                          icon: const Icon(
                            Symicons.Icons_small_bottom_arrow_icon_120x120,
                            color: Colors.white,
                            size: 16,
                          ),
                          elevation: 0,
                          style: const TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          underline: Container(
                            height: 0,
                            color: const Color.fromARGB(255, 35, 13, 96),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            'Most used doc',
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
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(140, 12, 15, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Symicons.Icons_like_icon_120x120_190),
                        style:
                            IconButton.styleFrom(foregroundColor: Colors.white),
                        iconSize: 38,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 15, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Symicons.Icons_download_icon_120x120),
                        style:
                            IconButton.styleFrom(foregroundColor: Colors.white),
                        iconSize: 38,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 15, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Symicons.Icons_346),
                        style:
                            IconButton.styleFrom(foregroundColor: Colors.white),
                        iconSize: 38,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 15, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Symicons.Icons_tag_list_icon_120x120),
                        style:
                            IconButton.styleFrom(foregroundColor: Colors.white),
                        iconSize: 38,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 15, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                            Symicons.Icons_favorites_list_icon_120x120),
                        style:
                            IconButton.styleFrom(foregroundColor: Colors.white),
                        iconSize: 38,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 15, 0),
                      child: IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  content: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: -15.0,
                                        top: -15.0,
                                        child: InkResponse(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Colors.red,
                                            child: Icon(
                                              Icons.close,
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Form(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              height: 173,
                                              width: 425,
                                              decoration: BoxDecoration(
                                                color: symColor,
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: Colors.grey
                                                            .withOpacity(0.3))),
                                              ),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: <Widget>[
                                                    Container(
                                                      child: Image.asset(
                                                        "assets/images/emily1.png",
                                                        height: 95,
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets.only(
                                                          top: 40),
                                                      child: const Center(
                                                          child: Text(
                                                              "Emily Smith",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 20,
                                                                  fontFamily:
                                                                      "Open Sans"))),
                                                    ),
                                                  ]),
                                            ),
                                            Container(
                                              height: 242,
                                              width: 425,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: Colors.grey
                                                            .withOpacity(0.3))),
                                              ),
                                              child: const Center(
                                                  child: Text("Contact Me",
                                                      style: TextStyle(
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 20,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          fontFamily:
                                                              "Helvetica"))),
                                            ),
                                            Container(
                                              height: 63.25,
                                              width: 425,
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: Colors.grey
                                                            .withOpacity(0.3))),
                                              ),
                                              child: const Center(
                                                  child: Text("Contact Me",
                                                      style: TextStyle(
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 20,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          fontFamily:
                                                              "Helvetica"))),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        icon: const Icon(Symicons.Icons_config_icon_120x120),
                        style:
                            IconButton.styleFrom(foregroundColor: Colors.white),
                        iconSize: 38,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
         
          leading: appBarState == true
              ? Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
            child: InkWell(
              child: Image.asset(
                "assets/images/Symlogo3.png",
                fit: BoxFit.fill,
                    ),
                    onTap: () {
                      navService.goBack();
                    },
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                  child: InkWell(
                    child: Image.asset(
                      "assets/images/backIcon.png",
                      
                    ),
                    onTap: () {
                      navService.goBack();
                    },
                  ),
                ),
          
          backgroundColor: symColor,
        ),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
                height: 842,
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
                      '/W1': (context1) => const SymHome(),
                    })),
          ],
        ),
      ),
    );
  }
}
