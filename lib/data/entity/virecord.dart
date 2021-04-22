import 'package:json_annotation/json_annotation.dart';

part 'virecord.g.dart';

/// 就诊记录
@JsonSerializable()
class ViRecord {
  @JsonKey(name: 'JGLX')
  final String? jglx;
  @JsonKey(name: 'JGLXMC')
  final String? jglxmc;
  @JsonKey(name: 'KSMC')
  final String? ksmc;
  @JsonKey(name: 'SJBM')
  final String? sjbm;
  @JsonKey(name: 'ZDBM')
  final String? zdbm;
  @JsonKey(name: 'LOCKFLAG')
  final String? lockflag;
  @JsonKey(name: 'JGLB')
  final String? jglb;
  @JsonKey(name: 'JZYSXM')
  final String? jzysxm;
  @JsonKey(name: 'SJGJZDMC')
  final String? sjgjzdmc;
  @JsonKey(name: 'SJGJZ')
  final String? sjgjz;
  @JsonKey(name: 'JZYSGH')
  final String? jzysgh;
  @JsonKey(name: 'YYJB')
  final String? yyjb;
  @JsonKey(name: 'JZSJ')
  final String? jzsj;
  @JsonKey(name: 'GZFLAG')
  final String? gzflag;
  @JsonKey(name: 'SJMC')
  final String? sjmc;
  @JsonKey(name: 'KLX')
  final String? klx;
  @JsonKey(name: 'KH')
  final String? kh;
  @JsonKey(name: 'ZJLX')
  final String? zjlx;
  @JsonKey(name: 'ZJHM')
  final String? zjhm;
  @JsonKey(name: 'XM')
  final String? xm;
  @JsonKey(name: 'JZLSH')
  final String? jzlsh;
  @JsonKey(name: 'ZDMC')
  final String? zdmc;
  @JsonKey(name: 'JSSJ')
  final String? jssj;
  @JsonKey(name: 'JGMC')
  final String? jgmc;
  @JsonKey(name: 'EMPI')
  final String? empi;
  @JsonKey(name: 'KSSJ')
  final String? kssj;
  @JsonKey(name: 'JGBM')
  final String? jgbm;

  ViRecord(
      this.jglx,
      this.jglxmc,
      this.ksmc,
      this.sjbm,
      this.zdbm,
      this.lockflag,
      this.jglb,
      this.jzysxm,
      this.sjgjzdmc,
      this.sjgjz,
      this.jzysgh,
      this.yyjb,
      this.jzsj,
      this.gzflag,
      this.sjmc,
      this.klx,
      this.kh,
      this.zjlx,
      this.zjhm,
      this.xm,
      this.jzlsh,
      this.zdmc,
      this.jssj,
      this.jgmc,
      this.empi,
      this.kssj,
      this.jgbm);

  factory ViRecord.fromJson(Map<String, dynamic> json) =>
      _$ViRecordFromJson(json);

  Map<String?, dynamic> toJson() => _$ViRecordToJson(this);
}
