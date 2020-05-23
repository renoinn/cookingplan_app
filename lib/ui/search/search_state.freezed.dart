// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {List<Food> selectedFoods = const <Food>[],
      List<SearchResultItem> results = const <SearchResultItem>[],
      int page = 0}) {
    return _SearchState(
      selectedFoods: selectedFoods,
      results: results,
      page: page,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  List<Food> get selectedFoods;
  List<SearchResultItem> get results;
  int get page;

  $SearchStateCopyWith<SearchState> get copyWith;
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<Food> selectedFoods, List<SearchResultItem> results, int page});
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object selectedFoods = freezed,
    Object results = freezed,
    Object page = freezed,
  }) {
    return _then(_value.copyWith(
      selectedFoods: selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods as List<Food>,
      results: results == freezed
          ? _value.results
          : results as List<SearchResultItem>,
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Food> selectedFoods, List<SearchResultItem> results, int page});
}

class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object selectedFoods = freezed,
    Object results = freezed,
    Object page = freezed,
  }) {
    return _then(_SearchState(
      selectedFoods: selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods as List<Food>,
      results: results == freezed
          ? _value.results
          : results as List<SearchResultItem>,
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

class _$_SearchState with DiagnosticableTreeMixin implements _SearchState {
  _$_SearchState(
      {this.selectedFoods = const <Food>[],
      this.results = const <SearchResultItem>[],
      this.page = 0})
      : assert(selectedFoods != null),
        assert(results != null),
        assert(page != null);

  @JsonKey(defaultValue: const <Food>[])
  @override
  final List<Food> selectedFoods;
  @JsonKey(defaultValue: const <SearchResultItem>[])
  @override
  final List<SearchResultItem> results;
  @JsonKey(defaultValue: 0)
  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState(selectedFoods: $selectedFoods, results: $results, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState'))
      ..add(DiagnosticsProperty('selectedFoods', selectedFoods))
      ..add(DiagnosticsProperty('results', results))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.selectedFoods, selectedFoods) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFoods, selectedFoods)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedFoods) ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(page);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {List<Food> selectedFoods,
      List<SearchResultItem> results,
      int page}) = _$_SearchState;

  @override
  List<Food> get selectedFoods;
  @override
  List<SearchResultItem> get results;
  @override
  int get page;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}

class _$SearchResultItemTearOff {
  const _$SearchResultItemTearOff();

  _SearchResultItem call(
      {String title,
      String description,
      String foodstuff,
      String thumbnail,
      String link,
      String displayLink,
      bool favorite}) {
    return _SearchResultItem(
      title: title,
      description: description,
      foodstuff: foodstuff,
      thumbnail: thumbnail,
      link: link,
      displayLink: displayLink,
      favorite: favorite,
    );
  }
}

// ignore: unused_element
const $SearchResultItem = _$SearchResultItemTearOff();

mixin _$SearchResultItem {
  String get title;
  String get description;
  String get foodstuff;
  String get thumbnail;
  String get link;
  String get displayLink;
  bool get favorite;

  $SearchResultItemCopyWith<SearchResultItem> get copyWith;
}

abstract class $SearchResultItemCopyWith<$Res> {
  factory $SearchResultItemCopyWith(
          SearchResultItem value, $Res Function(SearchResultItem) then) =
      _$SearchResultItemCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      String foodstuff,
      String thumbnail,
      String link,
      String displayLink,
      bool favorite});
}

class _$SearchResultItemCopyWithImpl<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  _$SearchResultItemCopyWithImpl(this._value, this._then);

  final SearchResultItem _value;
  // ignore: unused_field
  final $Res Function(SearchResultItem) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object foodstuff = freezed,
    Object thumbnail = freezed,
    Object link = freezed,
    Object displayLink = freezed,
    Object favorite = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      foodstuff: foodstuff == freezed ? _value.foodstuff : foodstuff as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      link: link == freezed ? _value.link : link as String,
      displayLink:
          displayLink == freezed ? _value.displayLink : displayLink as String,
      favorite: favorite == freezed ? _value.favorite : favorite as bool,
    ));
  }
}

abstract class _$SearchResultItemCopyWith<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  factory _$SearchResultItemCopyWith(
          _SearchResultItem value, $Res Function(_SearchResultItem) then) =
      __$SearchResultItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      String foodstuff,
      String thumbnail,
      String link,
      String displayLink,
      bool favorite});
}

class __$SearchResultItemCopyWithImpl<$Res>
    extends _$SearchResultItemCopyWithImpl<$Res>
    implements _$SearchResultItemCopyWith<$Res> {
  __$SearchResultItemCopyWithImpl(
      _SearchResultItem _value, $Res Function(_SearchResultItem) _then)
      : super(_value, (v) => _then(v as _SearchResultItem));

  @override
  _SearchResultItem get _value => super._value as _SearchResultItem;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object foodstuff = freezed,
    Object thumbnail = freezed,
    Object link = freezed,
    Object displayLink = freezed,
    Object favorite = freezed,
  }) {
    return _then(_SearchResultItem(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      foodstuff: foodstuff == freezed ? _value.foodstuff : foodstuff as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      link: link == freezed ? _value.link : link as String,
      displayLink:
          displayLink == freezed ? _value.displayLink : displayLink as String,
      favorite: favorite == freezed ? _value.favorite : favorite as bool,
    ));
  }
}

class _$_SearchResultItem
    with DiagnosticableTreeMixin
    implements _SearchResultItem {
  _$_SearchResultItem(
      {this.title,
      this.description,
      this.foodstuff,
      this.thumbnail,
      this.link,
      this.displayLink,
      this.favorite});

  @override
  final String title;
  @override
  final String description;
  @override
  final String foodstuff;
  @override
  final String thumbnail;
  @override
  final String link;
  @override
  final String displayLink;
  @override
  final bool favorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchResultItem(title: $title, description: $description, foodstuff: $foodstuff, thumbnail: $thumbnail, link: $link, displayLink: $displayLink, favorite: $favorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchResultItem'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('foodstuff', foodstuff))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('displayLink', displayLink))
      ..add(DiagnosticsProperty('favorite', favorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.foodstuff, foodstuff) ||
                const DeepCollectionEquality()
                    .equals(other.foodstuff, foodstuff)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.displayLink, displayLink) ||
                const DeepCollectionEquality()
                    .equals(other.displayLink, displayLink)) &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality()
                    .equals(other.favorite, favorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(foodstuff) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(displayLink) ^
      const DeepCollectionEquality().hash(favorite);

  @override
  _$SearchResultItemCopyWith<_SearchResultItem> get copyWith =>
      __$SearchResultItemCopyWithImpl<_SearchResultItem>(this, _$identity);
}

abstract class _SearchResultItem implements SearchResultItem {
  factory _SearchResultItem(
      {String title,
      String description,
      String foodstuff,
      String thumbnail,
      String link,
      String displayLink,
      bool favorite}) = _$_SearchResultItem;

  @override
  String get title;
  @override
  String get description;
  @override
  String get foodstuff;
  @override
  String get thumbnail;
  @override
  String get link;
  @override
  String get displayLink;
  @override
  bool get favorite;
  @override
  _$SearchResultItemCopyWith<_SearchResultItem> get copyWith;
}
