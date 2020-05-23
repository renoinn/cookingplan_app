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
      List<Food> selectedFoods = const <Food>[],
      List<UsedFood> usedFoods = const <UsedFood>[]}) {
    return _HomeState(
      foods: foods,
      selectedFoods: selectedFoods,
      usedFoods: usedFoods,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  List<Food> get foods;
  List<Food> get selectedFoods;
  List<UsedFood> get usedFoods;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<Food> foods, List<Food> selectedFoods, List<UsedFood> usedFoods});
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
    Object usedFoods = freezed,
  }) {
    return _then(_value.copyWith(
      foods: foods == freezed ? _value.foods : foods as List<Food>,
      selectedFoods: selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods as List<Food>,
      usedFoods:
          usedFoods == freezed ? _value.usedFoods : usedFoods as List<UsedFood>,
    ));
  }
}

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Food> foods, List<Food> selectedFoods, List<UsedFood> usedFoods});
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
    Object usedFoods = freezed,
  }) {
    return _then(_HomeState(
      foods: foods == freezed ? _value.foods : foods as List<Food>,
      selectedFoods: selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods as List<Food>,
      usedFoods:
          usedFoods == freezed ? _value.usedFoods : usedFoods as List<UsedFood>,
    ));
  }
}

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {this.foods = const <Food>[],
      this.selectedFoods = const <Food>[],
      this.usedFoods = const <UsedFood>[]})
      : assert(foods != null),
        assert(selectedFoods != null),
        assert(usedFoods != null);

  @JsonKey(defaultValue: const <Food>[])
  @override
  final List<Food> foods;
  @JsonKey(defaultValue: const <Food>[])
  @override
  final List<Food> selectedFoods;
  @JsonKey(defaultValue: const <UsedFood>[])
  @override
  final List<UsedFood> usedFoods;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(foods: $foods, selectedFoods: $selectedFoods, usedFoods: $usedFoods)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('foods', foods))
      ..add(DiagnosticsProperty('selectedFoods', selectedFoods))
      ..add(DiagnosticsProperty('usedFoods', usedFoods));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.foods, foods) ||
                const DeepCollectionEquality().equals(other.foods, foods)) &&
            (identical(other.selectedFoods, selectedFoods) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFoods, selectedFoods)) &&
            (identical(other.usedFoods, usedFoods) ||
                const DeepCollectionEquality()
                    .equals(other.usedFoods, usedFoods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foods) ^
      const DeepCollectionEquality().hash(selectedFoods) ^
      const DeepCollectionEquality().hash(usedFoods);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {List<Food> foods,
      List<Food> selectedFoods,
      List<UsedFood> usedFoods}) = _$_HomeState;

  @override
  List<Food> get foods;
  @override
  List<Food> get selectedFoods;
  @override
  List<UsedFood> get usedFoods;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
