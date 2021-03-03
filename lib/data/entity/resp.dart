import 'package:json_annotation/json_annotation.dart';

part 'resp.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Resp<T> {
  const Resp(this.status, this.total, this.data, this.msg);
  @JsonKey(name: 'statuscode')
  final String status;
  @JsonKey(name: 'total')
  final int total;
  @JsonKey(name: 'repData')
  final T data;
  @JsonKey(name: 'repMsg')
  final String msg;

  factory Resp.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$RespFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$RespToJson(this, toJsonT);
}
