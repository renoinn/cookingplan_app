import 'package:cookingplan/entity/Favorite.dart';
import 'package:cookingplan/entity/Food.dart';
import 'package:cookingplan/repository/FavoriteRepository.dart';
import 'package:cookingplan/repository/FoodRepository.dart';
import 'package:cookingplan/ui/favorite/favorite_state.dart';
import 'package:cookingplan/ui/favorite/favorite_state_controller.dart';
import 'package:cookingplan/ui/home/home_state_controller.dart';
import 'package:cookingplan/ui/home/home_state.dart';
import 'package:cookingplan/ui/root_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(StorageMethodAdapter());
  Hive.registerAdapter(FoodAdapter());
  Hive.registerAdapter(FavoriteAdapter());
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeState homeState = HomeState();
    FavoriteState favoriteState = FavoriteState();
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
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const RootTabPage(),
      ),
    );
  }
}