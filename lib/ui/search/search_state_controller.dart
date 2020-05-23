import 'package:cookingplan/repository/FavoriteRepository.dart';
import 'package:cookingplan/response/CustomSearchResponse.dart';
import 'package:cookingplan/repository/SearchRepository.dart';
import 'package:cookingplan/ui/favorite/favorite_state_controller.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:state_notifier/state_notifier.dart';

class SearchStateController extends StateNotifier<SearchState> with LocatorMixin {
  SearchStateController(SearchState state) : super(state);

  SearchRepository get searchRepository => read<SearchRepository>();
  FavoriteRepository get favoriteRepository => read<FavoriteRepository>();

  FavoriteStateController get favoriteStateController => read<FavoriteStateController>();

  void search({int page = 0}) async {
    String query = state.selectedFoods.map((food) => food.name).join(' ');
    int nextPage = state.page + 1;
    CustomSearchResponse response = await searchRepository.search(query: query, page: nextPage);

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
    state = state.copyWith(results: results, page: nextPage);
  }

  void addFavorite(SearchResultItem item) {
    List<SearchResultItem> results = List<SearchResultItem>.from(state.results);
    int index = results.indexWhere((element) => element.link == item.link);
    results[index] = results[index].copyWith(favorite: true);
    state = state.copyWith(results: results);

    favoriteStateController.addFavorite(item, state.selectedFoods);
  }

  void deleteFavorite(String link) {
    List<SearchResultItem> results = List<SearchResultItem>.from(state.results);
    int index = results.indexWhere((element) => element.link == link);
    results[index] = results[index].copyWith(favorite: false);
    state = state.copyWith(results: results);

    favoriteStateController.deleteFavorite(link);
  }
}