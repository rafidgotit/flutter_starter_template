// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailLoginDto _$$_EmailLoginDtoFromJson(Map<String, dynamic> json) =>
    _$_EmailLoginDto(
      username: json['UserName'] as String,
      password: json['Password'] as String,
    );

Map<String, dynamic> _$$_EmailLoginDtoToJson(_$_EmailLoginDto instance) =>
    <String, dynamic>{
      'UserName': instance.username,
      'Password': instance.password,
    };

_$_EmailSignupDto _$$_EmailSignupDtoFromJson(Map<String, dynamic> json) =>
    _$_EmailSignupDto(
      email: json['Email'] as String,
      password: json['Password'] as String,
      firstName: json['FirstName'] as String,
      lastName: json['LastName'] as String,
    );

Map<String, dynamic> _$$_EmailSignupDtoToJson(_$_EmailSignupDto instance) =>
    <String, dynamic>{
      'Email': instance.email,
      'Password': instance.password,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
    };
