import 'package:cookingplan/ui/favorite/favorite_page.dart';
import 'package:flutter/material.dart';

class FavoriteNavigator extends StatelessWidget {
  const FavoriteNavigator({
    Key key,
    this.navigatorKey,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: FavoritePage.routeName,
      onGenerateRoute: (settings) {
        return MaterialPageRoute<dynamic>(
          settings: settings,
          builder: (context) {
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
