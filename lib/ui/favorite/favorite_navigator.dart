import 'package:cookingplan/ui/favorite/favorite_page.dart';
import 'package:flutter/material.dart';

class FavoriteNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const FavoriteNavigator({
    Key key,
    this.navigatorKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: FavoritePage.routeName,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case FavoritePage.routeName:
                return const FavoritePage();
            }
            return const FavoritePage();
          },
        );
      },
    );
  }
}
