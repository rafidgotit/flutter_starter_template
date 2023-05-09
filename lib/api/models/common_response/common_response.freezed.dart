// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonResponse _$CommonResponseFromJson(Map<String, dynamic> json) {
  return _CommonResponse.fromJson(json);
}

/// @nodoc
mixin _$CommonResponse {
  @JsonKey(name: 'Success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonResponseCopyWith<CommonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonResponseCopyWith<$Res> {
  factory $CommonResponseCopyWith(
          CommonResponse value, $Res Function(CommonResponse) then) =
      _$CommonResponseCopyWithImpl<$Res, CommonResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Success') bool success,
      @JsonKey(name: 'Message') String? message});
}

/// @nodoc
class _$CommonResponseCopyWithImpl<$Res, $Val extends CommonResponse>
    implements $CommonResponseCopyWith<$Res> {
  _$CommonResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommonResponseCopyWith<$Res>
    implements $CommonResponseCopyWith<$Res> {
  factory _$$_CommonResponseCopyWith(
          _$_CommonResponse value, $Res Function(_$_CommonResponse) then) =
      __$$_CommonResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Success') bool success,
      @JsonKey(name: 'Message') String? message});
}

/// @nodoc
class __$$_CommonResponseCopyWithImpl<$Res>
    extends _$CommonResponseCopyWithImpl<$Res, _$_CommonResponse>
    implements _$$_CommonResponseCopyWith<$Res> {
  __$$_CommonResponseCopyWithImpl(
      _$_CommonResponse _value, $Res Function(_$_CommonResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_$_CommonResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonResponse implements _CommonResponse {
  const _$_CommonResponse(
      {@JsonKey(name: 'Success') required this.success,
      @JsonKey(name: 'Message') this.message});

  factory _$_CommonResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CommonResponseFromJson(json);

  @override
  @JsonKey(name: 'Success')
  final bool success;
  @override
  @JsonKey(name: 'Message')
  final String? message;

  @override
  String toString() {
    return 'CommonResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonResponseCopyWith<_$_CommonResponse> get copyWith =>
      __$$_CommonResponseCopyWithImpl<_$_CommonResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonResponseToJson(
      this,
    );
  }
}

abstract class _CommonResponse implements CommonResponse {
  const factory _CommonResponse(
      {@JsonKey(name: 'Success') required final bool success,
      @JsonKey(name: 'Message') final String? message}) = _$_CommonResponse;

  factory _CommonResponse.fromJson(Map<String, dynamic> json) =
      _$_CommonResponse.fromJson;

  @override
  @JsonKey(name: 'Success')
  bool get success;
  @override
  @JsonKey(name: 'Message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_CommonResponseCopyWith<_$_CommonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
