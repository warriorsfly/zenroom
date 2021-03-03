// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resp<T> _$RespFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return Resp<T>(
    json['statuscode'] as String,
    json['total'] as int,
    fromJsonT(json['repData']),
    json['repMsg'] as String,
  );
}

Map<String, dynamic> _$RespToJson<T>(
  Resp<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'statuscode': instance.status,
      'total': instance.total,
      'repData': toJsonT(instance.data),
      'repMsg': instance.msg,
    };
