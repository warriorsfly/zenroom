import 'package:json_annotation/json_annotation.dart';

part 'resp.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class RespSingle<T> {
  const RespSingle(
      {required this.status, required this.data, required this.msg});
  @JsonKey(name: 'statuscode')
  final String status;
  @JsonKey(name: 'repData')
  final T data;
  @JsonKey(name: 'repMsg')
  final String msg;

  factory RespSingle.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$RespSingleFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$RespSingleToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class RespList<T> {
  const RespList(this.status, this.total, this.data, this.msg);
  @JsonKey(name: 'statuscode')
  final String status;
  @JsonKey(name: 'total')
  final int total;
  @JsonKey(name: 'repData')
  final List<T> data;
  @JsonKey(name: 'repMsg')
  final String msg;

  factory RespList.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$RespListFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$RespListToJson(this, toJsonT);
}
