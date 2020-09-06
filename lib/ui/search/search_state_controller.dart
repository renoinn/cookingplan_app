import 'package:cookingplan/repository/favorite_repository.dart';
import 'package:cookingplan/repository/search_repository.dart';
import 'package:cookingplan/ui/favorite/favorite_state_controller.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:state_notifier/state_notifier.dart';

class SearchStateController extends StateNotifier<SearchState> with LocatorMixin {
  SearchStateController(SearchState state) : super(state);

  SearchRepository get searchRepository => read<SearchRepository>();
  FavoriteRepository get favoriteRepository => read<FavoriteRepository>();

  FavoriteStateController get favoriteStateController => read<FavoriteStateController>();

  Future<void> search({int page = 0}) async {
    var query = state.selectedFoods.map((food) => food.name).join(' ');
    var nextPage = state.page + 1;
    var response = await searchRepository.search(query: query, page: nextPage);

    var results = List<SearchResultItem>.from(state.results);
    for (var i = 0; i < response.items.length; i++) {
      var item = response.items[i];
      Map thumbnail = item.pageMap.cseThumbnail?.first ?? item.pageMap.thumbnail?.first;
      var favorite = await favoriteRepository.isExist(item.link);
      results.add(SearchResultItem(
        title: item.title,
        description: item.snippet,
        link: item.link,
        displayLink: item.displayLink,
        thumbnail: thumbnail['src'] as String,
        favorite: favorite,
      ));
    }
    state = state.copyWith(results: results, page: nextPage);
  }

  void addFavorite(SearchResultItem item) {
    var results = List<SearchResultItem>.from(state.results);
    var index = results.indexWhere((element) => element.link == item.link);
    results[index] = results[index].copyWith(favorite: true);
    state = state.copyWith(results: results);

    favoriteStateController.addFavorite(item, state.selectedFoods);
  }

  void deleteFavorite(String link) {
    var results = List<SearchResultItem>.from(state.results);
    var index = results.indexWhere((element) => element.link == link);
    results[index] = results[index].copyWith(favorite: false);
    state = state.copyWith(results: results);

    favoriteStateController.deleteFavorite(link);
  }
}
