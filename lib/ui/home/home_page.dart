import 'package:cookingplan/entity/Food.dart';
import 'package:cookingplan/entity/UsedFood.dart';
import 'package:cookingplan/repository/SearchRepository.dart';
import 'package:cookingplan/ui/home/home_state_controller.dart';
import 'package:cookingplan/ui/home/home_state.dart';
import 'package:cookingplan/ui/search/search_page.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:cookingplan/ui/search/search_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

final homePageKey = GlobalKey<ScaffoldState>();
const _kFoodFormHeight = 140.0;
const _kFoodFormMinimumHeight = 96.0;

class HomePage extends StatelessWidget {

  static const String routeName = 'home/';

  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO showLicensePage
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        key: homePageKey,
        body: Stack(
          children: <Widget>[
            Scrollbar(
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Text('家にある食材', style: Theme.of(context).textTheme.headline5,),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: FlatButton(
                              child: Icon(Icons.copyright),
                              onPressed: () => showLicensePage(
                                applicationName: 'クップラ',
                                context: context,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, position) => const Divider(),
                        itemCount: context.select((HomeState s) => s.foods).length,
                        itemBuilder: (context, position) {
                          List<Food> foods = context.select((HomeState s) => s.foods);
                          return _FoodListItem(food: foods[position],);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: const _FoodForm(),
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: _kFoodFormHeight),
          child: _SearchMealsButton(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class _SearchMealsButton extends StatelessWidget {
  const _SearchMealsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.select((HomeState s) => s.selectedFoods).isNotEmpty,
      child: FloatingActionButton.extended(
        onPressed: () {
          List<Food> selectedFoods = context.read<HomeState>().selectedFoods;
          if (selectedFoods.isEmpty) {
            // TODO show snack bar
            return;
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                SearchState searchState = SearchState(selectedFoods: selectedFoods);
                return Provider<SearchRepository>(
                  create: (context) => SearchRepository(),
                  child: StateNotifierProvider<SearchStateController, SearchState>(
                    create: (context) => SearchStateController(searchState),
                    child: Consumer<SearchStateController>(
                      builder: (context, controller, _) {
                        controller.search();
                        return const SearchPage();
                      },
                    ),
                  ),
                );
              },
            )
          );
        },
        icon: Icon(Icons.search),
        label: Text('献立を探す ',),
      ),
    );
  }
}

class _FoodListItem extends StatelessWidget {
  const _FoodListItem({
    Key key, this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(food.name),
      onDismissed: (direction) {
        context.read<HomeStateController>().deleteFood(food);
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('${food.name}を消費しました'),
            action: SnackBarAction(
              onPressed: () => homePageKey.currentContext.read<HomeStateController>().undoDelete(food),
              label: '元に戻す',
            ),
          )
        );
      },
      background: Container(color: Colors.red,),
      child: ListTile(
        onTap: () {
          if (!context.read<HomeState>().selectedFoods.contains(food)) {
            context.read<HomeStateController>().selectFood(food);
          } else {
            context.read<HomeStateController>().deselectFood(food);
          }
        },
        title: Text(food.name),
        trailing: Visibility(
          visible: context.select((HomeState s) => s.selectedFoods).contains(food),
          child: Icon(Icons.check, color: Colors.green,),
        ),
      ),
    );
  }
}

class _FoodForm extends StatefulWidget {
  const _FoodForm({
    Key key,
  }) : super(key: key);

  @override
  _FoodFormState createState() => _FoodFormState();
}

class _FoodFormState extends State<_FoodForm> {
  TextEditingController _food = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<UsedFood> usedFoods = context.select((HomeState s) => s.usedFoods);
    final boxHeight = usedFoods.isNotEmpty ? _kFoodFormHeight : _kFoodFormMinimumHeight;
    return Container(
      height: boxHeight,
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 32.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                ...usedFoods.map((usedFood) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: InputChip(
                        label: Text(usedFood.name),
                        onPressed: () {
                          _food.text = usedFood.name;
                        }
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  controller: _food,
                  decoration: InputDecoration(
                      hintText: '食材を追加'
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Food food = Food.withName(
                    name: _food.text,
                  );
                  context.read<HomeStateController>().addFood(food);
                  _food.clear();
                },
                child: Icon(Icons.add),
              )
            ],
          ),
        ],
      ),
    );
  }
}

