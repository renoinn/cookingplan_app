import 'package:cookingplan/entity/food.dart';
import 'package:cookingplan/theme.dart';
import 'package:cookingplan/ui/home/home_state_controller.dart';
import 'package:cookingplan/ui/search/search_page.dart';
import 'package:cookingplan/ui/search/search_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final foods = useProvider(homeStateProvider.state.select((value) => value.foods));
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
                            child: Text(
                              '家にある食材',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: FlatButton(
                              child: const Icon(Icons.copyright),
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
                        itemCount: foods.length,
                        itemBuilder: (context, position) {
                          return _FoodListItem(
                            food: foods[position],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: _FoodForm(),
            ),
          ],
        ),
        floatingActionButton: const Padding(
          padding: EdgeInsets.only(bottom: _kFoodFormHeight),
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
    final selectedFoods = useProvider(homeStateProvider.state.select((value) => value.selectedFoods));
    return Visibility(
      visible: selectedFoods.isNotEmpty,
      child: FloatingActionButton.extended(
        onPressed: () {
          if (selectedFoods.isEmpty) {
            // TODO show snack bar
            return;
          }
          Navigator.of(context).push<dynamic>(MaterialPageRoute<dynamic>(
            builder: (context) {
              useProvider(searchStateProvider).search();
              return const SearchPage();
            },
          ));
        },
        icon: Icon(
          Icons.search,
          color: textColor,
        ),
        label: Text(
          '献立を探す ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}

class _FoodListItem extends StatelessWidget {
  const _FoodListItem({
    Key key,
    this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(food.name),
      onDismissed: (direction) async {
        await useProvider(homeStateProvider).deleteFood(food);
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('${food.name}を消費しました'),
          action: SnackBarAction(
            onPressed: () => useProvider(homeStateProvider).undoDelete(food),
            label: '元に戻す',
          ),
        ));
      },
      background: Container(
        color: Colors.red,
      ),
      child: ListTile(
        onTap: () {
          if (!useProvider(homeStateProvider.state.select((value) => value.selectedFoods)).contains(food)) {
            useProvider(homeStateProvider).selectFood(food);
          } else {
            useProvider(homeStateProvider).deselectFood(food);
          }
        },
        title: Text(food.name),
        trailing: Visibility(
          visible: useProvider(homeStateProvider.state.select((value) => value.selectedFoods)).contains(food),
          child: const Icon(
            Icons.check,
            color: Colors.green,
          ),
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
  final TextEditingController _food = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var usedFoods = useProvider(homeStateProvider.state.select((value) => value.usedFoods));
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
                        }),
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
                  decoration: const InputDecoration(hintText: '食材を追加'),
                ),
              ),
              FlatButton(
                onPressed: () {
                  var food = Food.withName(_food.text);
                  useProvider(homeStateProvider).addFood(food);
                  _food.clear();
                },
                child: const Icon(Icons.add),
              )
            ],
          ),
        ],
      ),
    );
  }
}
