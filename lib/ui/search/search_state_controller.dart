import 'package:cookingplan/repository/FavoriteRepository.dart';
import 'package:cookingplan/response/CustomSearchResponse.dart';
import 'package:cookingplan/repository/SearchRepository.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:state_notifier/state_notifier.dart';

class SearchStateController extends StateNotifier<SearchState> with LocatorMixin {
  SearchStateController(SearchState state) : super(state);

  SearchRepository get searchRepository => read<SearchRepository>();
  FavoriteRepository get favoriteRepository => read<FavoriteRepository>();

  void search() async {
    String query = state.selectedFoods.map((food) => food.name).join(' ');
    CustomSearchResponse response = await searchRepository.search(query: query);

    List<SearchResultItem> results = List<SearchResultItem>.from(state.results);
    for(int i = 0; i < response.items.length; i++) {
      CustomSearchItem item = response.items[i];
      Map thumbnail = item.pageMap.cseThumbnail?.first ?? item.pageMap.thumbnail?.first;
      bool favorite = await favoriteRepository.isExist(item.link);
      results.add(SearchResultItem(
        title: item.title,
        description: item.snippet,
        link: item.link,
        displayLink: item.displayLink,
        thumbnail: thumbnail['src'],
        favorite: favorite,
      ));
    }
    state = state.copyWith(results: results);
  }

  void addFavorite(SearchResultItem item) {
    List<SearchResultItem> results = List<SearchResultItem>.from(state.results);
    SearchResultItem first = results.firstWhere((element) => element == item);
    // TODO update item.favorite = true
  }
}