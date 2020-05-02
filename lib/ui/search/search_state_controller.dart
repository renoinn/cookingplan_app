import 'package:cookingplan/entity/CustomSearchResponse.dart';
import 'package:cookingplan/entity/Food.dart';
import 'package:cookingplan/repository/SearchRepository.dart';
import 'package:cookingplan/ui/search/search_state.dart';
import 'package:state_notifier/state_notifier.dart';

class SearchStateController extends StateNotifier<SearchState> with LocatorMixin {
  SearchStateController(SearchState state, this.searchRepository) : super(state);

  final SearchRepository searchRepository;

//  @override
//  void initState() {
//    super.initState();
//    print('SearchStateController initState');
//    search();
//  }

  void search() async {
    String query = state.selectedFoods.map((food) => food.name).join(" ");
    print(query);
    CustomSearchResponse response = await searchRepository.search(query: query);
    List<SearchResultItem> results = response.items.map((item) {
      Map thumbnail = item.pageMap.cseThumbnail?.first ?? item.pageMap.thumbnail?.first;
      return SearchResultItem(
        title: item.title,
        description: item.snippet,

        thumbnail: thumbnail['src'],
      );
    }).toList();
    state = state.copyWith(results: results);
  }
}