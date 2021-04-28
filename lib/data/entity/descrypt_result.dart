import 'package:json_annotation/json_annotation.dart';
part 'descrypt_result.g.dart';

/// 就诊记录
@JsonSerializable()
class DescryptResult {
  final String? yhlx;
  final String? zjhm;
  final String? zjlx;
  final String? kh;
  final String? klx;
  final String? xm;
  final String? jmxxBz;
  final String? yljgdm;
  final String? yljgmc;
  final String? czrydm;
  final String? ysxm;
  final String? dylx;
  final String? mkdm;
  final String? accessToken;
  final String? jslx;
  final String? jzlsh;
  final String? tjlsh;
  final String? highLight;
  final String? isReturn;

  DescryptResult(
      this.yhlx,
      this.zjhm,
      this.zjlx,
      this.kh,
      this.klx,
      this.xm,
      this.jmxxBz,
      this.yljgdm,
      this.yljgmc,
      this.czrydm,
      this.ysxm,
      this.dylx,
      this.mkdm,
      this.accessToken,
      this.jslx,
      this.jzlsh,
      this.tjlsh,
      this.highLight,
      this.isReturn);

  factory DescryptResult.fromJson(Map<String, dynamic> json) =>
      _$DescryptResultFromJson(json);

  Map<String, dynamic> toJson() => _$DescryptResultToJson(this);
}
