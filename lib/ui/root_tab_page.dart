import 'package:cookingplan/theme.dart';
import 'package:cookingplan/ui/favorite/favorite_navigator.dart';
import 'package:cookingplan/ui/home/home_navigator.dart';
import 'package:flutter/material.dart';

class RootTabPage extends StatefulWidget {
  const RootTabPage({
    Key key,
  }) : super(key: key);

  @override
  _RootTabPageState createState() => _RootTabPageState();
}

class _RootTabPageState extends State<RootTabPage> {
  final _homeKey = GlobalKey<NavigatorState>();
  final _favoriteKey = GlobalKey<NavigatorState>();

  int _currentIndex = 0;
  List<_TabModel> _models = [];

  @override
  void initState() {
    super.initState();
    _models = [
      _TabModel(
        _homeKey,
        0,
        Icons.home,
        '食材',
        HomeNavigator(
          navigatorKey: _homeKey,
        ),
      ),
      _TabModel(
        _favoriteKey,
        1,
        Icons.star_border,
        'お気に入り',
        FavoriteNavigator(
          navigatorKey: _favoriteKey,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: _models.map((model) {
            return Offstage(
              offstage: _currentIndex != model.index,
              child: model.navigator,
            );
          }).toList(),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: _models.map((model) {
                return Expanded(
                  child: _NavigationButton(
                    icon: model.icon,
                    title: model.title,
                    selected: _currentIndex == model.index,
                    onPressed: () => _onPressNavigationButton(model.index),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    final key = _models[_currentIndex].navigator.key as GlobalKey<NavigatorState>;
    final isFirstRouteInCurrentTab = !await key.currentState.maybePop();
    if (isFirstRouteInCurrentTab) {
      if (_currentIndex != 0) {
        _currentIndex = 0;
        return false;
      }
    }

    return isFirstRouteInCurrentTab;
  }

  void _onPressNavigationButton(int index) {
    if (_currentIndex == index) {
      final key = _models[index].key as GlobalKey<NavigatorState>;
      key.currentState.popUntil((route) => route.isFirst);
    }
    setState(() {
      _currentIndex = index;
    });
  }
}

class _TabModel {
  _TabModel(this.key, this.index, this.icon, this.title, this.navigator);

  final GlobalKey key;
  final int index;
  final IconData icon;
  final String title;
  final Widget navigator;
}

class _NavigationButton extends StatelessWidget {
  const _NavigationButton({Key key, @required this.icon, @required this.title, @required this.onPressed, @required this.selected}) : super(key: key);

  final IconData icon;
  final String title;
  final VoidCallback onPressed;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            icon,
            color: selected ? accentColor : Colors.white,
          ),
          Text(
            title,
            style: TextStyle(
              color: selected ? accentColor : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
