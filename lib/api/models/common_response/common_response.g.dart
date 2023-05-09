// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonResponse _$$_CommonResponseFromJson(Map<String, dynamic> json) =>
    _$_CommonResponse(
      success: json['Success'] as bool,
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$$_CommonResponseToJson(_$_CommonResponse instance) =>
    <String, dynamic>{
      'Success': instance.success,
      'Message': instance.message,
    };
