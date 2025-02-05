// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motel_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MotelDataModel _$MotelDataModelFromJson(Map<String, dynamic> json) {
  return _MotelDataModel.fromJson(json);
}

/// @nodoc
mixin _$MotelDataModel {
  @JsonKey(name: 'pagina')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'qtdPorPagina')
  int get itemsPerPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalSuites')
  int get totalSuites => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalMoteis')
  int get totalMotels => throw _privateConstructorUsedError;
  @JsonKey(name: 'raio')
  double get radius => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxPaginas')
  int get maxPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'moteis')
  List<String> get motels => throw _privateConstructorUsedError;

  /// Serializes this MotelDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MotelDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MotelDataModelCopyWith<MotelDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotelDataModelCopyWith<$Res> {
  factory $MotelDataModelCopyWith(
          MotelDataModel value, $Res Function(MotelDataModel) then) =
      _$MotelDataModelCopyWithImpl<$Res, MotelDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pagina') int page,
      @JsonKey(name: 'qtdPorPagina') int itemsPerPage,
      @JsonKey(name: 'totalSuites') int totalSuites,
      @JsonKey(name: 'totalMoteis') int totalMotels,
      @JsonKey(name: 'raio') double radius,
      @JsonKey(name: 'maxPaginas') int maxPages,
      @JsonKey(name: 'moteis') List<String> motels});
}

/// @nodoc
class _$MotelDataModelCopyWithImpl<$Res, $Val extends MotelDataModel>
    implements $MotelDataModelCopyWith<$Res> {
  _$MotelDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MotelDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? itemsPerPage = null,
    Object? totalSuites = null,
    Object? totalMotels = null,
    Object? radius = null,
    Object? maxPages = null,
    Object? motels = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalSuites: null == totalSuites
          ? _value.totalSuites
          : totalSuites // ignore: cast_nullable_to_non_nullable
              as int,
      totalMotels: null == totalMotels
          ? _value.totalMotels
          : totalMotels // ignore: cast_nullable_to_non_nullable
              as int,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      maxPages: null == maxPages
          ? _value.maxPages
          : maxPages // ignore: cast_nullable_to_non_nullable
              as int,
      motels: null == motels
          ? _value.motels
          : motels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MotelDataModelImplCopyWith<$Res>
    implements $MotelDataModelCopyWith<$Res> {
  factory _$$MotelDataModelImplCopyWith(_$MotelDataModelImpl value,
          $Res Function(_$MotelDataModelImpl) then) =
      __$$MotelDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pagina') int page,
      @JsonKey(name: 'qtdPorPagina') int itemsPerPage,
      @JsonKey(name: 'totalSuites') int totalSuites,
      @JsonKey(name: 'totalMoteis') int totalMotels,
      @JsonKey(name: 'raio') double radius,
      @JsonKey(name: 'maxPaginas') int maxPages,
      @JsonKey(name: 'moteis') List<String> motels});
}

/// @nodoc
class __$$MotelDataModelImplCopyWithImpl<$Res>
    extends _$MotelDataModelCopyWithImpl<$Res, _$MotelDataModelImpl>
    implements _$$MotelDataModelImplCopyWith<$Res> {
  __$$MotelDataModelImplCopyWithImpl(
      _$MotelDataModelImpl _value, $Res Function(_$MotelDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MotelDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? itemsPerPage = null,
    Object? totalSuites = null,
    Object? totalMotels = null,
    Object? radius = null,
    Object? maxPages = null,
    Object? motels = null,
  }) {
    return _then(_$MotelDataModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalSuites: null == totalSuites
          ? _value.totalSuites
          : totalSuites // ignore: cast_nullable_to_non_nullable
              as int,
      totalMotels: null == totalMotels
          ? _value.totalMotels
          : totalMotels // ignore: cast_nullable_to_non_nullable
              as int,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      maxPages: null == maxPages
          ? _value.maxPages
          : maxPages // ignore: cast_nullable_to_non_nullable
              as int,
      motels: null == motels
          ? _value._motels
          : motels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MotelDataModelImpl extends _MotelDataModel {
  const _$MotelDataModelImpl(
      {@JsonKey(name: 'pagina') required this.page,
      @JsonKey(name: 'qtdPorPagina') required this.itemsPerPage,
      @JsonKey(name: 'totalSuites') required this.totalSuites,
      @JsonKey(name: 'totalMoteis') required this.totalMotels,
      @JsonKey(name: 'raio') required this.radius,
      @JsonKey(name: 'maxPaginas') required this.maxPages,
      @JsonKey(name: 'moteis') required final List<String> motels})
      : _motels = motels,
        super._();

  factory _$MotelDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotelDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'pagina')
  final int page;
  @override
  @JsonKey(name: 'qtdPorPagina')
  final int itemsPerPage;
  @override
  @JsonKey(name: 'totalSuites')
  final int totalSuites;
  @override
  @JsonKey(name: 'totalMoteis')
  final int totalMotels;
  @override
  @JsonKey(name: 'raio')
  final double radius;
  @override
  @JsonKey(name: 'maxPaginas')
  final int maxPages;
  final List<String> _motels;
  @override
  @JsonKey(name: 'moteis')
  List<String> get motels {
    if (_motels is EqualUnmodifiableListView) return _motels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_motels);
  }

  @override
  String toString() {
    return 'MotelDataModel(page: $page, itemsPerPage: $itemsPerPage, totalSuites: $totalSuites, totalMotels: $totalMotels, radius: $radius, maxPages: $maxPages, motels: $motels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotelDataModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.totalSuites, totalSuites) ||
                other.totalSuites == totalSuites) &&
            (identical(other.totalMotels, totalMotels) ||
                other.totalMotels == totalMotels) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.maxPages, maxPages) ||
                other.maxPages == maxPages) &&
            const DeepCollectionEquality().equals(other._motels, _motels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      itemsPerPage,
      totalSuites,
      totalMotels,
      radius,
      maxPages,
      const DeepCollectionEquality().hash(_motels));

  /// Create a copy of MotelDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MotelDataModelImplCopyWith<_$MotelDataModelImpl> get copyWith =>
      __$$MotelDataModelImplCopyWithImpl<_$MotelDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotelDataModelImplToJson(
      this,
    );
  }
}

abstract class _MotelDataModel extends MotelDataModel {
  const factory _MotelDataModel(
          {@JsonKey(name: 'pagina') required final int page,
          @JsonKey(name: 'qtdPorPagina') required final int itemsPerPage,
          @JsonKey(name: 'totalSuites') required final int totalSuites,
          @JsonKey(name: 'totalMoteis') required final int totalMotels,
          @JsonKey(name: 'raio') required final double radius,
          @JsonKey(name: 'maxPaginas') required final int maxPages,
          @JsonKey(name: 'moteis') required final List<String> motels}) =
      _$MotelDataModelImpl;
  const _MotelDataModel._() : super._();

  factory _MotelDataModel.fromJson(Map<String, dynamic> json) =
      _$MotelDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'pagina')
  int get page;
  @override
  @JsonKey(name: 'qtdPorPagina')
  int get itemsPerPage;
  @override
  @JsonKey(name: 'totalSuites')
  int get totalSuites;
  @override
  @JsonKey(name: 'totalMoteis')
  int get totalMotels;
  @override
  @JsonKey(name: 'raio')
  double get radius;
  @override
  @JsonKey(name: 'maxPaginas')
  int get maxPages;
  @override
  @JsonKey(name: 'moteis')
  List<String> get motels;

  /// Create a copy of MotelDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MotelDataModelImplCopyWith<_$MotelDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
