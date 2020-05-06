// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  _FavoriteState call({List<Favorite> favorites = const <Favorite>[]}) {
    return _FavoriteState(
      favorites: favorites,
    );
  }
}

// ignore: unused_element
const $FavoriteState = _$FavoriteStateTearOff();

mixin _$FavoriteState {
  List<Favorite> get favorites;

  $FavoriteStateCopyWith<FavoriteState> get copyWith;
}

abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
  $Res call({List<Favorite> favorites});
}

class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;

  @override
  $Res call({
    Object favorites = freezed,
  }) {
    return _then(_value.copyWith(
      favorites:
          favorites == freezed ? _value.favorites : favorites as List<Favorite>,
    ));
  }
}

abstract class _$FavoriteStateCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$FavoriteStateCopyWith(
          _FavoriteState value, $Res Function(_FavoriteState) then) =
      __$FavoriteStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Favorite> favorites});
}

class __$FavoriteStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteStateCopyWith<$Res> {
  __$FavoriteStateCopyWithImpl(
      _FavoriteState _value, $Res Function(_FavoriteState) _then)
      : super(_value, (v) => _then(v as _FavoriteState));

  @override
  _FavoriteState get _value => super._value as _FavoriteState;

  @override
  $Res call({
    Object favorites = freezed,
  }) {
    return _then(_FavoriteState(
      favorites:
          favorites == freezed ? _value.favorites : favorites as List<Favorite>,
    ));
  }
}

class _$_FavoriteState with DiagnosticableTreeMixin implements _FavoriteState {
  _$_FavoriteState({this.favorites = const <Favorite>[]})
      : assert(favorites != null);

  @JsonKey(defaultValue: const <Favorite>[])
  @override
  final List<Favorite> favorites;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteState(favorites: $favorites)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoriteState'))
      ..add(DiagnosticsProperty('favorites', favorites));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteState &&
            (identical(other.favorites, favorites) ||
                const DeepCollectionEquality()
                    .equals(other.favorites, favorites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favorites);

  @override
  _$FavoriteStateCopyWith<_FavoriteState> get copyWith =>
      __$FavoriteStateCopyWithImpl<_FavoriteState>(this, _$identity);
}

abstract class _FavoriteState implements FavoriteState {
  factory _FavoriteState({List<Favorite> favorites}) = _$_FavoriteState;

  @override
  List<Favorite> get favorites;
  @override
  _$FavoriteStateCopyWith<_FavoriteState> get copyWith;
}
