// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {List<Food> foods = const <Food>[],
      List<Food> selectedFoods = const <Food>[]}) {
    return _HomeState(
      foods: foods,
      selectedFoods: selectedFoods,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  List<Food> get foods;
  List<Food> get selectedFoods;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({List<Food> foods, List<Food> selectedFoods});
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object foods = freezed,
    Object selectedFoods = freezed,
  }) {
    return _then(_value.copyWith(
      foods: foods == freezed ? _value.foods : foods as List<Food>,
      selectedFoods: selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods as List<Food>,
    ));
  }
}

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Food> foods, List<Food> selectedFoods});
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object foods = freezed,
    Object selectedFoods = freezed,
  }) {
    return _then(_HomeState(
      foods: foods == freezed ? _value.foods : foods as List<Food>,
      selectedFoods: selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods as List<Food>,
    ));
  }
}

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {this.foods = const <Food>[], this.selectedFoods = const <Food>[]})
      : assert(foods != null),
        assert(selectedFoods != null);

  @JsonKey(defaultValue: const <Food>[])
  @override
  final List<Food> foods;
  @JsonKey(defaultValue: const <Food>[])
  @override
  final List<Food> selectedFoods;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(foods: $foods, selectedFoods: $selectedFoods)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('foods', foods))
      ..add(DiagnosticsProperty('selectedFoods', selectedFoods));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.foods, foods) ||
                const DeepCollectionEquality().equals(other.foods, foods)) &&
            (identical(other.selectedFoods, selectedFoods) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFoods, selectedFoods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foods) ^
      const DeepCollectionEquality().hash(selectedFoods);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({List<Food> foods, List<Food> selectedFoods}) =
      _$_HomeState;

  @override
  List<Food> get foods;
  @override
  List<Food> get selectedFoods;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
