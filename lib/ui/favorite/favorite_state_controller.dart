import 'package:cookingplan/entity/food.dart';
import 'package:cookingplan/entity/recipe.dart';
import 'package:cookingplan/repository/favorite_repository.dart';
import 'package:cookingplan/ui/favorite/favorite_state.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:state_notifier/state_notifier.dart';

class FavoriteStateController extends StateNotifier<FavoriteState> with LocatorMixin {
  FavoriteStateController(FavoriteState state) : super(state);

  FavoriteRepository get favoriteRepository => read<FavoriteRepository>();

  @override
  Future<void> initState() async {
    super.initState();
    var favorites = await favoriteRepository.getFavorites();
    state = state.copyWith(favorites: favorites);
  }

  Future<void> addFavorite(SearchResultItem item, List<Food> foods) async {
    var favorite = Recipe.now(title: item.title, description: item.description, link: item.link, displayLink: item.displayLink, thumbnail: item.thumbnail);
    if (await favoriteRepository.isExist(favorite.link)) return;

    await favoriteRepository.saveFavorite(favorite);
    var favorites = List<Recipe>.from(state.favorites)..add(favorite);
    state = state.copyWith(favorites: favorites);
  }

  Future<void> deleteFavorite(String link) async {
    await favoriteRepository.deleteFavorite(link);
    var favorites = await favoriteRepository.getFavorites();
    state = state.copyWith(favorites: favorites);
  }

//  void undoDelete(Food food) {
//    addFood(food); // TODO 元の位置に戻るとなお良い
//  }
}
