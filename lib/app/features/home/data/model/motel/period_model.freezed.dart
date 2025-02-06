// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'period_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PeriodModel _$PeriodModelFromJson(Map<String, dynamic> json) {
  return _PeriodModel.fromJson(json);
}

/// @nodoc
mixin _$PeriodModel {
  @JsonKey(name: 'tempoFormatado')
  String get formattedTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'tempo')
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'valor')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'valorTotal')
  double get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'temCortesia')
  bool get hasCourtesy => throw _privateConstructorUsedError;
  @JsonKey(name: 'desconto')
  DiscountModel? get discount => throw _privateConstructorUsedError;

  /// Serializes this PeriodModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodModelCopyWith<PeriodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodModelCopyWith<$Res> {
  factory $PeriodModelCopyWith(
          PeriodModel value, $Res Function(PeriodModel) then) =
      _$PeriodModelCopyWithImpl<$Res, PeriodModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tempoFormatado') String formattedTime,
      @JsonKey(name: 'tempo') String time,
      @JsonKey(name: 'valor') double price,
      @JsonKey(name: 'valorTotal') double totalPrice,
      @JsonKey(name: 'temCortesia') bool hasCourtesy,
      @JsonKey(name: 'desconto') DiscountModel? discount});

  $DiscountModelCopyWith<$Res>? get discount;
}

/// @nodoc
class _$PeriodModelCopyWithImpl<$Res, $Val extends PeriodModel>
    implements $PeriodModelCopyWith<$Res> {
  _$PeriodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedTime = null,
    Object? time = null,
    Object? price = null,
    Object? totalPrice = null,
    Object? hasCourtesy = null,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      formattedTime: null == formattedTime
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      hasCourtesy: null == hasCourtesy
          ? _value.hasCourtesy
          : hasCourtesy // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
    ) as $Val);
  }

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountModelCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $DiscountModelCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PeriodModelImplCopyWith<$Res>
    implements $PeriodModelCopyWith<$Res> {
  factory _$$PeriodModelImplCopyWith(
          _$PeriodModelImpl value, $Res Function(_$PeriodModelImpl) then) =
      __$$PeriodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tempoFormatado') String formattedTime,
      @JsonKey(name: 'tempo') String time,
      @JsonKey(name: 'valor') double price,
      @JsonKey(name: 'valorTotal') double totalPrice,
      @JsonKey(name: 'temCortesia') bool hasCourtesy,
      @JsonKey(name: 'desconto') DiscountModel? discount});

  @override
  $DiscountModelCopyWith<$Res>? get discount;
}

/// @nodoc
class __$$PeriodModelImplCopyWithImpl<$Res>
    extends _$PeriodModelCopyWithImpl<$Res, _$PeriodModelImpl>
    implements _$$PeriodModelImplCopyWith<$Res> {
  __$$PeriodModelImplCopyWithImpl(
      _$PeriodModelImpl _value, $Res Function(_$PeriodModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedTime = null,
    Object? time = null,
    Object? price = null,
    Object? totalPrice = null,
    Object? hasCourtesy = null,
    Object? discount = freezed,
  }) {
    return _then(_$PeriodModelImpl(
      formattedTime: null == formattedTime
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      hasCourtesy: null == hasCourtesy
          ? _value.hasCourtesy
          : hasCourtesy // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodModelImpl extends _PeriodModel {
  const _$PeriodModelImpl(
      {@JsonKey(name: 'tempoFormatado') required this.formattedTime,
      @JsonKey(name: 'tempo') required this.time,
      @JsonKey(name: 'valor') required this.price,
      @JsonKey(name: 'valorTotal') required this.totalPrice,
      @JsonKey(name: 'temCortesia') required this.hasCourtesy,
      @JsonKey(name: 'desconto') this.discount})
      : super._();

  factory _$PeriodModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodModelImplFromJson(json);

  @override
  @JsonKey(name: 'tempoFormatado')
  final String formattedTime;
  @override
  @JsonKey(name: 'tempo')
  final String time;
  @override
  @JsonKey(name: 'valor')
  final double price;
  @override
  @JsonKey(name: 'valorTotal')
  final double totalPrice;
  @override
  @JsonKey(name: 'temCortesia')
  final bool hasCourtesy;
  @override
  @JsonKey(name: 'desconto')
  final DiscountModel? discount;

  @override
  String toString() {
    return 'PeriodModel(formattedTime: $formattedTime, time: $time, price: $price, totalPrice: $totalPrice, hasCourtesy: $hasCourtesy, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodModelImpl &&
            (identical(other.formattedTime, formattedTime) ||
                other.formattedTime == formattedTime) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.hasCourtesy, hasCourtesy) ||
                other.hasCourtesy == hasCourtesy) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, formattedTime, time, price,
      totalPrice, hasCourtesy, discount);

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodModelImplCopyWith<_$PeriodModelImpl> get copyWith =>
      __$$PeriodModelImplCopyWithImpl<_$PeriodModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodModelImplToJson(
      this,
    );
  }
}

abstract class _PeriodModel extends PeriodModel {
  const factory _PeriodModel(
          {@JsonKey(name: 'tempoFormatado') required final String formattedTime,
          @JsonKey(name: 'tempo') required final String time,
          @JsonKey(name: 'valor') required final double price,
          @JsonKey(name: 'valorTotal') required final double totalPrice,
          @JsonKey(name: 'temCortesia') required final bool hasCourtesy,
          @JsonKey(name: 'desconto') final DiscountModel? discount}) =
      _$PeriodModelImpl;
  const _PeriodModel._() : super._();

  factory _PeriodModel.fromJson(Map<String, dynamic> json) =
      _$PeriodModelImpl.fromJson;

  @override
  @JsonKey(name: 'tempoFormatado')
  String get formattedTime;
  @override
  @JsonKey(name: 'tempo')
  String get time;
  @override
  @JsonKey(name: 'valor')
  double get price;
  @override
  @JsonKey(name: 'valorTotal')
  double get totalPrice;
  @override
  @JsonKey(name: 'temCortesia')
  bool get hasCourtesy;
  @override
  @JsonKey(name: 'desconto')
  DiscountModel? get discount;

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodModelImplCopyWith<_$PeriodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
