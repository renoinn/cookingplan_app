import 'package:cookingplan/ui/home/home_page.dart';
import 'package:flutter/material.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({
    Key key,
    this.navigatorKey,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: HomePage.routeName,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case HomePage.routeName:
                return const HomePage();
            }
            return const HomePage();
          },
        );
      },
    );
  }
}
