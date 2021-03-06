import 'package:cookingplan/repository/favorite_repository.dart';
import 'package:cookingplan/repository/search_repository.dart';
import 'package:cookingplan/ui/favorite/favorite_state_controller.dart';
import 'package:cookingplan/ui/home/home_state_controller.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

final searchStateProvider = StateNotifierProvider((ref) => SearchStateController(ref.read));

class SearchStateController extends StateNotifier<SearchState> with LocatorMixin {
  SearchStateController(this._read) : super(SearchState());

  final Reader _read;

  SearchRepository get searchRepository => _read(searchRepositoryProvider);
  FavoriteRepository get favoriteRepository => _read(favoriteRepositoryProvider);

  HomeStateController get homeStateController => _read(homeStateProvider);
  FavoriteStateController get favoriteStateController => _read(favoriteStateProvider);

  Future<void> search({int page = 0}) async {
    var query = homeStateController.state.selectedFoods.map((food) => food.name).join(' ');
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
