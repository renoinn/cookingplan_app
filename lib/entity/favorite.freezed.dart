// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Favorite _$FavoriteFromJson(Map<String, dynamic> json) {
  return _Favorite.fromJson(json);
}

class _$FavoriteTearOff {
  const _$FavoriteTearOff();

// ignore: unused_element
  _Favorite call(
      {@nullable int id,
      String title,
      String description = '',
      String thumbnail = '',
      String link,
      @JsonKey(name: 'display_link') String displayLink = '',
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt}) {
    return _Favorite(
      id: id,
      title: title,
      description: description,
      thumbnail: thumbnail,
      link: link,
      displayLink: displayLink,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

// ignore: unused_element
const $Favorite = _$FavoriteTearOff();

mixin _$Favorite {
  @nullable
  int get id;
  String get title;
  String get description;
  String get thumbnail;
  String get link;
  @JsonKey(name: 'display_link')
  String get displayLink;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  Map<String, dynamic> toJson();
  $FavoriteCopyWith<Favorite> get copyWith;
}

abstract class $FavoriteCopyWith<$Res> {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) then) =
      _$FavoriteCopyWithImpl<$Res>;
  $Res call(
      {@nullable int id,
      String title,
      String description,
      String thumbnail,
      String link,
      @JsonKey(name: 'display_link') String displayLink,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

class _$FavoriteCopyWithImpl<$Res> implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(this._value, this._then);

  final Favorite _value;
  // ignore: unused_field
  final $Res Function(Favorite) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object thumbnail = freezed,
    Object link = freezed,
    Object displayLink = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      link: link == freezed ? _value.link : link as String,
      displayLink:
          displayLink == freezed ? _value.displayLink : displayLink as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

abstract class _$FavoriteCopyWith<$Res> implements $FavoriteCopyWith<$Res> {
  factory _$FavoriteCopyWith(_Favorite value, $Res Function(_Favorite) then) =
      __$FavoriteCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int id,
      String title,
      String description,
      String thumbnail,
      String link,
      @JsonKey(name: 'display_link') String displayLink,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

class __$FavoriteCopyWithImpl<$Res> extends _$FavoriteCopyWithImpl<$Res>
    implements _$FavoriteCopyWith<$Res> {
  __$FavoriteCopyWithImpl(_Favorite _value, $Res Function(_Favorite) _then)
      : super(_value, (v) => _then(v as _Favorite));

  @override
  _Favorite get _value => super._value as _Favorite;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object thumbnail = freezed,
    Object link = freezed,
    Object displayLink = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_Favorite(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      link: link == freezed ? _value.link : link as String,
      displayLink:
          displayLink == freezed ? _value.displayLink : displayLink as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

@JsonSerializable()
class _$_Favorite with DiagnosticableTreeMixin implements _Favorite {
  _$_Favorite(
      {@nullable this.id,
      this.title,
      this.description = '',
      this.thumbnail = '',
      this.link,
      @JsonKey(name: 'display_link') this.displayLink = '',
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : assert(description != null),
        assert(thumbnail != null),
        assert(displayLink != null);

  factory _$_Favorite.fromJson(Map<String, dynamic> json) =>
      _$_$_FavoriteFromJson(json);

  @override
  @nullable
  final int id;
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: '')
  @override
  final String thumbnail;
  @override
  final String link;
  @override
  @JsonKey(name: 'display_link')
  final String displayLink;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Favorite(id: $id, title: $title, description: $description, thumbnail: $thumbnail, link: $link, displayLink: $displayLink, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Favorite'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('displayLink', displayLink))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Favorite &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.displayLink, displayLink) ||
                const DeepCollectionEquality()
                    .equals(other.displayLink, displayLink)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(displayLink) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$FavoriteCopyWith<_Favorite> get copyWith =>
      __$FavoriteCopyWithImpl<_Favorite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FavoriteToJson(this);
  }
}

abstract class _Favorite implements Favorite {
  factory _Favorite(
      {@nullable int id,
      String title,
      String description,
      String thumbnail,
      String link,
      @JsonKey(name: 'display_link') String displayLink,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt}) = _$_Favorite;

  factory _Favorite.fromJson(Map<String, dynamic> json) = _$_Favorite.fromJson;

  @override
  @nullable
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get thumbnail;
  @override
  String get link;
  @override
  @JsonKey(name: 'display_link')
  String get displayLink;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  _$FavoriteCopyWith<_Favorite> get copyWith;
}
