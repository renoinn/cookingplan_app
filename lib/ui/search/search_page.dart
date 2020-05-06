import 'package:cached_network_image/cached_network_image.dart';
import 'package:cookingplan/ui/favorite/favorite_state.dart';
import 'package:cookingplan/ui/favorite/favorite_state_controller.dart';
import 'package:cookingplan/ui/home/home_state_controller.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:cookingplan/ui/search/search_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

final searchPageKey = GlobalKey<ScaffoldState>();
class SearchPage extends StatelessWidget {
  const SearchPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: searchPageKey,
      appBar: AppBar(),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: ListView.separated(
            separatorBuilder: (context, position) => const Divider(),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: context.select((SearchState s) => s.results)?.length ?? 0,
            itemBuilder: (context, position) {
              SearchResultItem result = context.select((SearchState s) => s.results)[position];
              return _SearchPageResultItem(key: ValueKey(result.link), result: result);
            },
          ),
        ),
      ),
    );
  }
}

class _SearchPageResultItem extends StatelessWidget {
  const _SearchPageResultItem({
    Key key,
    @required this.result,
  }) : super(key: key);

  final SearchResultItem result;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        InAppBrowser nativeBrowser = InAppBrowser();
        nativeBrowser.open(
          url: result.link,
          options: InAppBrowserClassOptions(
            inAppBrowserOptions: InAppBrowserOptions(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              child: CachedNetworkImage(
                imageUrl: result.thumbnail,
                width: 112.0,
                height: 112.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16.0,),
            Expanded(child: Column(
              children: <Widget>[
                Text(result.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.subtitle1,),
                Text(result.description, maxLines: 3, overflow: TextOverflow.ellipsis,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FavoriteButton(
                      favorite: result.favorite,
                      onPressed: () {
                        context.read<FavoriteStateController>().addFavorite(result, context.read<SearchState>().selectedFoods);
                      },
                    ),
                  ],
                ),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    Key key,
    this.favorite,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  final bool favorite;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 32.0,
      height: 32.0,
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: FlatButton(
        onPressed: onPressed,
        child: Icon(favorite ? Icons.star : Icons.star_border, size: 24.0,),
      ),
    );
  }
}
