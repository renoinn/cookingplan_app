import 'package:cookingplan/entity/Favorite.dart';
import 'package:cookingplan/entity/Food.dart';
import 'package:cookingplan/repository/FoodRepository.dart';
import 'package:cookingplan/ui/home/home_state_controller.dart';
import 'package:cookingplan/ui/home/home_page.dart';
import 'package:cookingplan/ui/home/home_state.dart';
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
    HomeState state = HomeState();
    FoodRepository foodRepository = FoodRepository();
    return MultiProvider(
      providers: [
        StateNotifierProvider<HomeStateController, HomeState>(
          create: (context) => HomeStateController(state, foodRepository),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomePage(),
      ),
    );
  }
}