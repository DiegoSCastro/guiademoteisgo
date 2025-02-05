// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motel_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MotelResponseModel _$MotelResponseModelFromJson(Map<String, dynamic> json) {
  return _MotelResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MotelResponseModel {
  @JsonKey(name: 'sucesso')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  MotelDataModel get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'mensagem')
  List<String> get message => throw _privateConstructorUsedError;

  /// Serializes this MotelResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MotelResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MotelResponseModelCopyWith<MotelResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotelResponseModelCopyWith<$Res> {
  factory $MotelResponseModelCopyWith(
          MotelResponseModel value, $Res Function(MotelResponseModel) then) =
      _$MotelResponseModelCopyWithImpl<$Res, MotelResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sucesso') bool success,
      @JsonKey(name: 'data') MotelDataModel data,
      @JsonKey(name: 'mensagem') List<String> message});

  $MotelDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$MotelResponseModelCopyWithImpl<$Res, $Val extends MotelResponseModel>
    implements $MotelResponseModelCopyWith<$Res> {
  _$MotelResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MotelResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MotelDataModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of MotelResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MotelDataModelCopyWith<$Res> get data {
    return $MotelDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MotelResponseModelImplCopyWith<$Res>
    implements $MotelResponseModelCopyWith<$Res> {
  factory _$$MotelResponseModelImplCopyWith(_$MotelResponseModelImpl value,
          $Res Function(_$MotelResponseModelImpl) then) =
      __$$MotelResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sucesso') bool success,
      @JsonKey(name: 'data') MotelDataModel data,
      @JsonKey(name: 'mensagem') List<String> message});

  @override
  $MotelDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$MotelResponseModelImplCopyWithImpl<$Res>
    extends _$MotelResponseModelCopyWithImpl<$Res, _$MotelResponseModelImpl>
    implements _$$MotelResponseModelImplCopyWith<$Res> {
  __$$MotelResponseModelImplCopyWithImpl(_$MotelResponseModelImpl _value,
      $Res Function(_$MotelResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MotelResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$MotelResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MotelDataModel,
      message: null == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MotelResponseModelImpl extends _MotelResponseModel {
  const _$MotelResponseModelImpl(
      {@JsonKey(name: 'sucesso') required this.success,
      @JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'mensagem') required final List<String> message})
      : _message = message,
        super._();

  factory _$MotelResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotelResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'sucesso')
  final bool success;
  @override
  @JsonKey(name: 'data')
  final MotelDataModel data;
  final List<String> _message;
  @override
  @JsonKey(name: 'mensagem')
  List<String> get message {
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_message);
  }

  @override
  String toString() {
    return 'MotelResponseModel(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotelResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data,
      const DeepCollectionEquality().hash(_message));

  /// Create a copy of MotelResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MotelResponseModelImplCopyWith<_$MotelResponseModelImpl> get copyWith =>
      __$$MotelResponseModelImplCopyWithImpl<_$MotelResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotelResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MotelResponseModel extends MotelResponseModel {
  const factory _MotelResponseModel(
          {@JsonKey(name: 'sucesso') required final bool success,
          @JsonKey(name: 'data') required final MotelDataModel data,
          @JsonKey(name: 'mensagem') required final List<String> message}) =
      _$MotelResponseModelImpl;
  const _MotelResponseModel._() : super._();

  factory _MotelResponseModel.fromJson(Map<String, dynamic> json) =
      _$MotelResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'sucesso')
  bool get success;
  @override
  @JsonKey(name: 'data')
  MotelDataModel get data;
  @override
  @JsonKey(name: 'mensagem')
  List<String> get message;

  /// Create a copy of MotelResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MotelResponseModelImplCopyWith<_$MotelResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
