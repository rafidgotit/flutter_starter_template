// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailLoginDto _$EmailLoginDtoFromJson(Map<String, dynamic> json) {
  return _EmailLoginDto.fromJson(json);
}

/// @nodoc
mixin _$EmailLoginDto {
  @JsonKey(name: 'UserName')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'Password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailLoginDtoCopyWith<EmailLoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailLoginDtoCopyWith<$Res> {
  factory $EmailLoginDtoCopyWith(
          EmailLoginDto value, $Res Function(EmailLoginDto) then) =
      _$EmailLoginDtoCopyWithImpl<$Res, EmailLoginDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'UserName') String username,
      @JsonKey(name: 'Password') String password});
}

/// @nodoc
class _$EmailLoginDtoCopyWithImpl<$Res, $Val extends EmailLoginDto>
    implements $EmailLoginDtoCopyWith<$Res> {
  _$EmailLoginDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailLoginDtoCopyWith<$Res>
    implements $EmailLoginDtoCopyWith<$Res> {
  factory _$$_EmailLoginDtoCopyWith(
          _$_EmailLoginDto value, $Res Function(_$_EmailLoginDto) then) =
      __$$_EmailLoginDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'UserName') String username,
      @JsonKey(name: 'Password') String password});
}

/// @nodoc
class __$$_EmailLoginDtoCopyWithImpl<$Res>
    extends _$EmailLoginDtoCopyWithImpl<$Res, _$_EmailLoginDto>
    implements _$$_EmailLoginDtoCopyWith<$Res> {
  __$$_EmailLoginDtoCopyWithImpl(
      _$_EmailLoginDto _value, $Res Function(_$_EmailLoginDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_EmailLoginDto(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailLoginDto implements _EmailLoginDto {
  const _$_EmailLoginDto(
      {@JsonKey(name: 'UserName') required this.username,
      @JsonKey(name: 'Password') required this.password});

  factory _$_EmailLoginDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmailLoginDtoFromJson(json);

  @override
  @JsonKey(name: 'UserName')
  final String username;
  @override
  @JsonKey(name: 'Password')
  final String password;

  @override
  String toString() {
    return 'EmailLoginDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailLoginDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailLoginDtoCopyWith<_$_EmailLoginDto> get copyWith =>
      __$$_EmailLoginDtoCopyWithImpl<_$_EmailLoginDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailLoginDtoToJson(
      this,
    );
  }
}

abstract class _EmailLoginDto implements EmailLoginDto {
  const factory _EmailLoginDto(
          {@JsonKey(name: 'UserName') required final String username,
          @JsonKey(name: 'Password') required final String password}) =
      _$_EmailLoginDto;

  factory _EmailLoginDto.fromJson(Map<String, dynamic> json) =
      _$_EmailLoginDto.fromJson;

  @override
  @JsonKey(name: 'UserName')
  String get username;
  @override
  @JsonKey(name: 'Password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_EmailLoginDtoCopyWith<_$_EmailLoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

EmailSignupDto _$EmailSignupDtoFromJson(Map<String, dynamic> json) {
  return _EmailSignupDto.fromJson(json);
}

/// @nodoc
mixin _$EmailSignupDto {
  @JsonKey(name: 'Email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'Password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'FirstName')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastName')
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailSignupDtoCopyWith<EmailSignupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSignupDtoCopyWith<$Res> {
  factory $EmailSignupDtoCopyWith(
          EmailSignupDto value, $Res Function(EmailSignupDto) then) =
      _$EmailSignupDtoCopyWithImpl<$Res, EmailSignupDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Email') String email,
      @JsonKey(name: 'Password') String password,
      @JsonKey(name: 'FirstName') String firstName,
      @JsonKey(name: 'LastName') String lastName});
}

/// @nodoc
class _$EmailSignupDtoCopyWithImpl<$Res, $Val extends EmailSignupDto>
    implements $EmailSignupDtoCopyWith<$Res> {
  _$EmailSignupDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailSignupDtoCopyWith<$Res>
    implements $EmailSignupDtoCopyWith<$Res> {
  factory _$$_EmailSignupDtoCopyWith(
          _$_EmailSignupDto value, $Res Function(_$_EmailSignupDto) then) =
      __$$_EmailSignupDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Email') String email,
      @JsonKey(name: 'Password') String password,
      @JsonKey(name: 'FirstName') String firstName,
      @JsonKey(name: 'LastName') String lastName});
}

/// @nodoc
class __$$_EmailSignupDtoCopyWithImpl<$Res>
    extends _$EmailSignupDtoCopyWithImpl<$Res, _$_EmailSignupDto>
    implements _$$_EmailSignupDtoCopyWith<$Res> {
  __$$_EmailSignupDtoCopyWithImpl(
      _$_EmailSignupDto _value, $Res Function(_$_EmailSignupDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$_EmailSignupDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailSignupDto implements _EmailSignupDto {
  const _$_EmailSignupDto(
      {@JsonKey(name: 'Email') required this.email,
      @JsonKey(name: 'Password') required this.password,
      @JsonKey(name: 'FirstName') required this.firstName,
      @JsonKey(name: 'LastName') required this.lastName});

  factory _$_EmailSignupDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmailSignupDtoFromJson(json);

  @override
  @JsonKey(name: 'Email')
  final String email;
  @override
  @JsonKey(name: 'Password')
  final String password;
  @override
  @JsonKey(name: 'FirstName')
  final String firstName;
  @override
  @JsonKey(name: 'LastName')
  final String lastName;

  @override
  String toString() {
    return 'EmailSignupDto(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailSignupDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailSignupDtoCopyWith<_$_EmailSignupDto> get copyWith =>
      __$$_EmailSignupDtoCopyWithImpl<_$_EmailSignupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailSignupDtoToJson(
      this,
    );
  }
}

abstract class _EmailSignupDto implements EmailSignupDto {
  const factory _EmailSignupDto(
          {@JsonKey(name: 'Email') required final String email,
          @JsonKey(name: 'Password') required final String password,
          @JsonKey(name: 'FirstName') required final String firstName,
          @JsonKey(name: 'LastName') required final String lastName}) =
      _$_EmailSignupDto;

  factory _EmailSignupDto.fromJson(Map<String, dynamic> json) =
      _$_EmailSignupDto.fromJson;

  @override
  @JsonKey(name: 'Email')
  String get email;
  @override
  @JsonKey(name: 'Password')
  String get password;
  @override
  @JsonKey(name: 'FirstName')
  String get firstName;
  @override
  @JsonKey(name: 'LastName')
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$_EmailSignupDtoCopyWith<_$_EmailSignupDto> get copyWith =>
      throw _privateConstructorUsedError;
}
