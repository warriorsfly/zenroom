// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RespSingle<T> _$RespSingleFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return RespSingle<T>(
    status: json['statuscode'] as String,
    data: fromJsonT(json['repData']),
    msg: json['repMsg'] as String,
  );
}

Map<String, dynamic> _$RespSingleToJson<T>(
  RespSingle<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'statuscode': instance.status,
      'repData': toJsonT(instance.data),
      'repMsg': instance.msg,
    };

RespList<T> _$RespListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return RespList<T>(
    json['statuscode'] as String,
    json['total'] as int,
    (json['repData'] as List<dynamic>).map(fromJsonT).toList(),
    json['repMsg'] as String,
  );
}

Map<String, dynamic> _$RespListToJson<T>(
  RespList<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'statuscode': instance.status,
      'total': instance.total,
      'repData': instance.data.map(toJsonT).toList(),
      'repMsg': instance.msg,
    };
