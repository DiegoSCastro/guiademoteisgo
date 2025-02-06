// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MotelModel _$MotelModelFromJson(Map<String, dynamic> json) {
  return _MotelModel.fromJson(json);
}

/// @nodoc
mixin _$MotelModel {
  @JsonKey(name: 'fantasia')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'bairro')
  String get neighborhood => throw _privateConstructorUsedError;
  @JsonKey(name: 'distancia')
  double get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'qtdFavoritos')
  int get favoriteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'suites')
  List<SuiteModel> get suites => throw _privateConstructorUsedError;
  @JsonKey(name: 'qtdAvaliacoes')
  int get reviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  double get rating => throw _privateConstructorUsedError;

  /// Serializes this MotelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MotelModelCopyWith<MotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotelModelCopyWith<$Res> {
  factory $MotelModelCopyWith(
          MotelModel value, $Res Function(MotelModel) then) =
      _$MotelModelCopyWithImpl<$Res, MotelModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fantasia') String name,
      @JsonKey(name: 'logo') String logo,
      @JsonKey(name: 'bairro') String neighborhood,
      @JsonKey(name: 'distancia') double distance,
      @JsonKey(name: 'qtdFavoritos') int favoriteCount,
      @JsonKey(name: 'suites') List<SuiteModel> suites,
      @JsonKey(name: 'qtdAvaliacoes') int reviewCount,
      @JsonKey(name: 'media') double rating});
}

/// @nodoc
class _$MotelModelCopyWithImpl<$Res, $Val extends MotelModel>
    implements $MotelModelCopyWith<$Res> {
  _$MotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MotelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
    Object? neighborhood = null,
    Object? distance = null,
    Object? favoriteCount = null,
    Object? suites = null,
    Object? reviewCount = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      neighborhood: null == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      suites: null == suites
          ? _value.suites
          : suites // ignore: cast_nullable_to_non_nullable
              as List<SuiteModel>,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MotelModelImplCopyWith<$Res>
    implements $MotelModelCopyWith<$Res> {
  factory _$$MotelModelImplCopyWith(
          _$MotelModelImpl value, $Res Function(_$MotelModelImpl) then) =
      __$$MotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fantasia') String name,
      @JsonKey(name: 'logo') String logo,
      @JsonKey(name: 'bairro') String neighborhood,
      @JsonKey(name: 'distancia') double distance,
      @JsonKey(name: 'qtdFavoritos') int favoriteCount,
      @JsonKey(name: 'suites') List<SuiteModel> suites,
      @JsonKey(name: 'qtdAvaliacoes') int reviewCount,
      @JsonKey(name: 'media') double rating});
}

/// @nodoc
class __$$MotelModelImplCopyWithImpl<$Res>
    extends _$MotelModelCopyWithImpl<$Res, _$MotelModelImpl>
    implements _$$MotelModelImplCopyWith<$Res> {
  __$$MotelModelImplCopyWithImpl(
      _$MotelModelImpl _value, $Res Function(_$MotelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MotelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
    Object? neighborhood = null,
    Object? distance = null,
    Object? favoriteCount = null,
    Object? suites = null,
    Object? reviewCount = null,
    Object? rating = null,
  }) {
    return _then(_$MotelModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      neighborhood: null == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      suites: null == suites
          ? _value._suites
          : suites // ignore: cast_nullable_to_non_nullable
              as List<SuiteModel>,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MotelModelImpl extends _MotelModel {
  const _$MotelModelImpl(
      {@JsonKey(name: 'fantasia') required this.name,
      @JsonKey(name: 'logo') required this.logo,
      @JsonKey(name: 'bairro') required this.neighborhood,
      @JsonKey(name: 'distancia') required this.distance,
      @JsonKey(name: 'qtdFavoritos') required this.favoriteCount,
      @JsonKey(name: 'suites') required final List<SuiteModel> suites,
      @JsonKey(name: 'qtdAvaliacoes') required this.reviewCount,
      @JsonKey(name: 'media') required this.rating})
      : _suites = suites,
        super._();

  factory _$MotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotelModelImplFromJson(json);

  @override
  @JsonKey(name: 'fantasia')
  final String name;
  @override
  @JsonKey(name: 'logo')
  final String logo;
  @override
  @JsonKey(name: 'bairro')
  final String neighborhood;
  @override
  @JsonKey(name: 'distancia')
  final double distance;
  @override
  @JsonKey(name: 'qtdFavoritos')
  final int favoriteCount;
  final List<SuiteModel> _suites;
  @override
  @JsonKey(name: 'suites')
  List<SuiteModel> get suites {
    if (_suites is EqualUnmodifiableListView) return _suites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suites);
  }

  @override
  @JsonKey(name: 'qtdAvaliacoes')
  final int reviewCount;
  @override
  @JsonKey(name: 'media')
  final double rating;

  @override
  String toString() {
    return 'MotelModel(name: $name, logo: $logo, neighborhood: $neighborhood, distance: $distance, favoriteCount: $favoriteCount, suites: $suites, reviewCount: $reviewCount, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotelModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.neighborhood, neighborhood) ||
                other.neighborhood == neighborhood) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            const DeepCollectionEquality().equals(other._suites, _suites) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      logo,
      neighborhood,
      distance,
      favoriteCount,
      const DeepCollectionEquality().hash(_suites),
      reviewCount,
      rating);

  /// Create a copy of MotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MotelModelImplCopyWith<_$MotelModelImpl> get copyWith =>
      __$$MotelModelImplCopyWithImpl<_$MotelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotelModelImplToJson(
      this,
    );
  }
}

abstract class _MotelModel extends MotelModel {
  const factory _MotelModel(
      {@JsonKey(name: 'fantasia') required final String name,
      @JsonKey(name: 'logo') required final String logo,
      @JsonKey(name: 'bairro') required final String neighborhood,
      @JsonKey(name: 'distancia') required final double distance,
      @JsonKey(name: 'qtdFavoritos') required final int favoriteCount,
      @JsonKey(name: 'suites') required final List<SuiteModel> suites,
      @JsonKey(name: 'qtdAvaliacoes') required final int reviewCount,
      @JsonKey(name: 'media') required final double rating}) = _$MotelModelImpl;
  const _MotelModel._() : super._();

  factory _MotelModel.fromJson(Map<String, dynamic> json) =
      _$MotelModelImpl.fromJson;

  @override
  @JsonKey(name: 'fantasia')
  String get name;
  @override
  @JsonKey(name: 'logo')
  String get logo;
  @override
  @JsonKey(name: 'bairro')
  String get neighborhood;
  @override
  @JsonKey(name: 'distancia')
  double get distance;
  @override
  @JsonKey(name: 'qtdFavoritos')
  int get favoriteCount;
  @override
  @JsonKey(name: 'suites')
  List<SuiteModel> get suites;
  @override
  @JsonKey(name: 'qtdAvaliacoes')
  int get reviewCount;
  @override
  @JsonKey(name: 'media')
  double get rating;

  /// Create a copy of MotelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MotelModelImplCopyWith<_$MotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
