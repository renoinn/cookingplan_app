import 'package:cookingplan/entity/Favorite.dart';
import 'package:cookingplan/entity/Food.dart';
import 'package:cookingplan/repository/FavoriteRepository.dart';
import 'package:cookingplan/ui/favorite/favorite_state.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:state_notifier/state_notifier.dart';

class FavoriteStateController extends StateNotifier<FavoriteState> with LocatorMixin {
  FavoriteStateController(FavoriteState state) : super(state);

  FavoriteRepository get favoriteRepository => read<FavoriteRepository>();

  @override
  void initState() async {
    super.initState();
    List<Favorite> favorites = await favoriteRepository.getFavorites();
    state = state.copyWith(favorites: favorites);
  }

  void addFavorite(SearchResultItem item, List<Food> foods) async {
    Favorite favorite = Favorite.now(title: item.title, description: item.description, foods: foods, link: item.link, displayLink: item.displayLink, thumbnail: item.thumbnail);
    if (await favoriteRepository.isExist(favorite.link)) return;

    await favoriteRepository.saveFavorite(favorite);
    List<Favorite> favorites = List<Favorite>.from(state.favorites)..add(favorite);
    state = state.copyWith(favorites: favorites);
  }

  void deleteFavorite(String link) async {
    await favoriteRepository.deleteFavorite(link);
    List<Favorite> favorites = await favoriteRepository.getFavorites();
    state = state.copyWith(favorites: favorites);
  }

//  void undoDelete(Food food) {
//    addFood(food); // TODO 元の位置に戻るとなお良い
//  }
}
