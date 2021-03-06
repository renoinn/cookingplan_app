import 'package:cookingplan/entity/food.dart';
import 'package:cookingplan/repository/food_repository.dart';
import 'package:cookingplan/ui/home/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeStateProvider = StateNotifierProvider((ref) => HomeStateController(ref.read));

class HomeStateController extends StateNotifier<HomeState> {
  HomeStateController(this._read) : super(HomeState()) {
    initState();
  }

  final Reader _read;

  FoodRepository get foodRepository => _read(foodRepositoryProvider);

  Future<void> initState() async {
    var foods = await foodRepository.getFoods();
    var usedFoods = await foodRepository.getUsedFoods();
    state = state.copyWith(foods: foods, usedFoods: usedFoods);
  }

  Future<void> addFood(Food food) async {
    if (await foodRepository.isExist(food.name)) {
      await foodRepository.reStock(food);
    } else {
      await foodRepository.saveFood(food);
    }
    var foods = List<Food>.from(state.foods)..add(food);
    state = state.copyWith(foods: foods);
  }

  Future<void> deleteFood(Food food) async {
    await foodRepository.used(food);
    var foods = await foodRepository.getFoods();
    var usedFoods = await foodRepository.getUsedFoods();
    state = state.copyWith(foods: foods, usedFoods: usedFoods);
  }

  void undoDelete(Food food) {
    addFood(food); // TODO 元の位置に戻るとなお良い
  }

  void selectFood(Food food) {
    var selectedFoods = List<Food>.from(state.selectedFoods)..add(food);
    state = state.copyWith(selectedFoods: selectedFoods);
  }

  void deselectFood(Food food) {
    var selectedFoods = List<Food>.from(state.selectedFoods)..remove(food);
    state = state.copyWith(selectedFoods: selectedFoods);
  }
}
