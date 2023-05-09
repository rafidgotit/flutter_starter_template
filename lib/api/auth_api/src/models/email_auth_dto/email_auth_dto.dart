import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_auth_dto.freezed.dart';
part 'email_auth_dto.g.dart';

@freezed
class EmailLoginDto with _$EmailLoginDto{
  const factory EmailLoginDto({
    @JsonKey(name:'UserName') required String username,
    @JsonKey(name:'Password') required String password,
  }) = _EmailLoginDto;

  factory EmailLoginDto.fromJson(Map<String, dynamic> json) => _$EmailLoginDtoFromJson(json);
}

@freezed
class EmailSignupDto with _$EmailSignupDto {
  const factory EmailSignupDto({
    @JsonKey(name: 'Email') required String email,
    @JsonKey(name: 'Password') required String password,
    @JsonKey(name: 'FirstName') required String firstName,
    @JsonKey(name: 'LastName') required String lastName,
  }) = _EmailSignupDto;

  factory EmailSignupDto.fromJson(Map<String, dynamic> json) => _$EmailSignupDtoFromJson(json);
}