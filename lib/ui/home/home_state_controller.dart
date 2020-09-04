import 'package:cookingplan/entity/Food.dart';
import 'package:cookingplan/entity/UsedFood.dart';
import 'package:cookingplan/repository/FoodRepository.dart';
import 'package:cookingplan/repository/UsedFoodRepository.dart';
import 'package:cookingplan/ui/home/home_state.dart';
import 'package:state_notifier/state_notifier.dart';

class HomeStateController extends StateNotifier<HomeState> with LocatorMixin {
  HomeStateController(HomeState state) : super(state);

  FoodRepository get foodRepository => read<FoodRepository>();
  UsedFoodRepository get usedFoodRepository => read<UsedFoodRepository>();

  @override
  void initState() async {
    super.initState();
    List<Food> foods = await foodRepository.getFoods();
    List<UsedFood> usedFoods = await usedFoodRepository.getUsedFoods();
    state = state.copyWith(foods: foods, usedFoods: usedFoods);
  }

  void addFood(Food food) async {
    await foodRepository.saveFood(food);
    List<Food> foods = List<Food>.from(state.foods)..add(food);
    state = state.copyWith(foods: foods);
  }

  void deleteFood(Food food) async {
    await usedFoodRepository.saveUsedFood(UsedFood.fromFood(food: food));
    await food.delete();
    List<Food> foods = await foodRepository.getFoods();
    List<UsedFood> usedFoods = await usedFoodRepository.getUsedFoods();
    state = state.copyWith(foods: foods, usedFoods: usedFoods);
  }

  void undoDelete(Food food) {
    addFood(food); // TODO 元の位置に戻るとなお良い
  }

  void selectFood(Food food) {
    List<Food> selectedFoods = List<Food>.from(state.selectedFoods)..add(food);
    state = state.copyWith(selectedFoods: selectedFoods);
  }

  void deselectFood(Food food) {
    List<Food> selectedFoods = List<Food>.from(state.selectedFoods)..remove(food);
    state = state.copyWith(selectedFoods: selectedFoods);
  }
}
