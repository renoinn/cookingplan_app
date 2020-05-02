import 'package:cached_network_image/cached_network_image.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: context.select((SearchState s) => s.results)?.length ?? 0,
            itemBuilder: (context, position) {
              SearchResultItem result = context.select((SearchState s) => s.results)[position];
              return Card(
                key: ValueKey(result.link),
                child: Row(
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl: result.thumbnail,
                      width: 156.0,
                      height: 156.0,
                      fit: BoxFit.cover,
                    ),
                    Expanded(child: Column(
                      children: <Widget>[
                        Text(result.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.headline6,),
                        Text(result.description, maxLines: 3, overflow: TextOverflow.ellipsis,),
                      ],
                    ),),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
