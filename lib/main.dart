import 'package:cookingplan/repository/favorite_repository.dart';
import 'package:cookingplan/repository/food_repository.dart';
import 'package:cookingplan/theme.dart';
import 'package:cookingplan/ui/favorite/favorite_state.dart';
import 'package:cookingplan/ui/favorite/favorite_state_controller.dart';
import 'package:cookingplan/ui/home/home_state.dart';
import 'package:cookingplan/ui/home/home_state_controller.dart';
import 'package:cookingplan/ui/root_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var homeState = HomeState();
    var favoriteState = FavoriteState();
    return MultiProvider(
      providers: [
        Provider<FoodRepository>(
          create: (context) => FoodRepository(),
        ),
        Provider<FavoriteRepository>(
          create: (context) => FavoriteRepository(),
        ),
        StateNotifierProvider<HomeStateController, HomeState>(
          create: (context) => HomeStateController(homeState),
        ),
        StateNotifierProvider<FavoriteStateController, FavoriteState>(
          create: (context) => FavoriteStateController(favoriteState),
        ),
      ],
      child: MaterialApp(
        theme: lightTheme,
        home: const RootTabPage(),
      ),
    );
  }
}
