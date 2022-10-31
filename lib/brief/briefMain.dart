import 'package:flutter/material.dart';
import 'briefCase.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

const symColor = Color(0xFF1e4cab);

final NavigationService navService = NavigationService();
class GlobalContextService { 
  static GlobalKey<NavigatorState> navigatorKey = 
  GlobalKey<NavigatorState>();
}

class BriefMain extends StatefulWidget {
  const BriefMain({super.key});

  @override
  State<BriefMain> createState() => _BriefMain();
}


class _BriefMain extends State<BriefMain> {
  bool shadowColor = false;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0), // here the desired height
        child: AppBar(
          actions: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                debugPrint("hello");
              },
              icon: const Icon(
                Icons.info_outline,
              ),
            )
          ],
          title: const Text(
            'SYMMETRYK',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
