import 'package:cached_network_image/cached_network_image.dart';
import 'package:cookingplan/entity/recipe.dart';
import 'package:cookingplan/ui/favorite/favorite_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoritePage extends StatelessWidget {
  static const String routeName = 'favorite/';

  const FavoritePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favorites = useProvider(favoriteStateProvider.state.select((value) => value.favorites));
    return Scaffold(
      body: Scrollbar(
        child: SafeArea(
          child: SingleChildScrollView(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, position) => const Divider(),
              itemCount: favorites.length,
              itemBuilder: (context, position) {
                return _FavoriteItem(
                  favorite: favorites[position],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _FavoriteItem extends StatelessWidget {
  const _FavoriteItem({
    Key key,
    @required this.favorite,
  }) : super(key: key);

  final Recipe favorite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var nativeBrowser = InAppBrowser();
        await nativeBrowser.openUrl(
          url: favorite.link,
          options: InAppBrowserClassOptions(
            crossPlatform: InAppBrowserOptions(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              child: CachedNetworkImage(
                imageUrl: favorite.thumbnail,
                width: 112.0,
                height: 112.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    favorite.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    favorite.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonTheme(
                        minWidth: 32.0,
                        height: 32.0,
                        padding: EdgeInsets.zero,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        child: FlatButton(
                          onPressed: () {
                            useProvider(favoriteStateProvider).deleteFavorite(favorite.link);
                          },
                          child: const Icon(
                            Icons.delete,
                            size: 24.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
