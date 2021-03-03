import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'ZJLXDM')
  final String zjlxdm;
  @JsonKey(name: 'ZJHM')
  final String zjhm;
  @JsonKey(name: 'EMPI')
  final String empi;
  @JsonKey(name: 'XM')
  final String xm;
  @JsonKey(name: 'KLXDM')
  final String klxdm;
  @JsonKey(name: 'KH')
  final String kh;
  @JsonKey(name: 'XBMC')
  final String xbmc;
  @JsonKey(name: 'XBDM')
  final String xbdm;
  @JsonKey(name: 'NL')
  int nl;
  @JsonKey(name: 'CSRQ')
  final String csrq;
  @JsonKey(name: 'DHHM')
  final String dhhm;
  @JsonKey(name: 'SJHM')
  final String sjhm;
  @JsonKey(name: 'DZYJDZ')
  final String dzyjdz;
  @JsonKey(name: 'GJDM')
  final String gjdm;
  @JsonKey(name: 'MZDM')
  final String mzdm;
  @JsonKey(name: 'HYZKDM')
  final String hyzkdm;
  @JsonKey(name: 'GZDWMC')
  final String gzdwmc;
  @JsonKey(name: 'GZDWDH')
  final String gzdwdh;
  @JsonKey(name: 'LXRXM')
  final String lxrxm;
  @JsonKey(name: 'LXRDH')
  final String lxrdh;
  @JsonKey(name: 'CZDZHJBZ')
  final String czdzhjbz;
  @JsonKey(name: 'JZDXXDZ')
  final String jzdxxdz;
  @JsonKey(name: 'JZDXZQHDM')
  final String jzdxzqhdm;
  @JsonKey(name: 'JZDDZBM')
  final String jzddzbm;
  @JsonKey(name: 'JZDSSBM')
  final String jzdssbm;
  @JsonKey(name: 'JZDSSMC')
  final String jzdssmc;
  @JsonKey(name: 'JZDDSBM')
  final String jzddsbm;
  @JsonKey(name: 'JZDDSMC')
  final String jzddsmc;
  @JsonKey(name: 'JZDQXBM')
  final String jzdqxbm;
  @JsonKey(name: 'JZDQXMC')
  final String jzdqxmc;
  @JsonKey(name: 'JZDJDBM')
  final String jzdjdbm;
  @JsonKey(name: 'JZDJDMC')
  final String jzdjdmc;
  @JsonKey(name: 'JZDCBM')
  final String jzdcbm;
  @JsonKey(name: 'JZDCMC')
  final String jzdcmc;
  @JsonKey(name: 'JZDMPHM')
  final String jzdmphm;
  @JsonKey(name: 'JZDYZBM')
  final String jzdyzbm;
  @JsonKey(name: 'HJDXXDZ')
  final String hjdxxdz;
  @JsonKey(name: 'HJDXZQHDM')
  final String hjdxzqhdm;
  @JsonKey(name: 'HJDDZBM')
  final String hjddzbm;
  @JsonKey(name: 'HJDSSBM')
  final String hjdssbm;
  @JsonKey(name: 'HJDSSMC')
  final String hjdssmc;
  @JsonKey(name: 'HJDDSBM')
  final String hjddsbm;
  @JsonKey(name: 'HJDDSMC')
  final String hjddsmc;
  @JsonKey(name: 'HJDQXBM')
  final String hjdqxbm;
  @JsonKey(name: 'HJDQXMC')
  final String hjdqxmc;
  @JsonKey(name: 'HJDJDBM')
  final String hjdjdbm;
  @JsonKey(name: 'HJDJDMC')
  final String hjdjdmc;
  @JsonKey(name: 'HJDCBM')
  final String hjdcbm;
  @JsonKey(name: 'HJDCMC')
  final String hjdcmc;

  User(
      this.zjlxdm,
      this.zjhm,
      this.empi,
      this.xm,
      this.klxdm,
      this.kh,
      this.xbmc,
      this.xbdm,
      this.csrq,
      this.dhhm,
      this.sjhm,
      this.dzyjdz,
      this.gjdm,
      this.mzdm,
      this.hyzkdm,
      this.gzdwmc,
      this.gzdwdh,
      this.lxrxm,
      this.lxrdh,
      this.czdzhjbz,
      this.jzdxxdz,
      this.jzdxzqhdm,
      this.jzddzbm,
      this.jzdssbm,
      this.jzdssmc,
      this.jzddsbm,
      this.jzddsmc,
      this.jzdqxbm,
      this.jzdqxmc,
      this.jzdjdbm,
      this.jzdjdmc,
      this.jzdcbm,
      this.jzdcmc,
      this.jzdmphm,
      this.jzdyzbm,
      this.hjdxxdz,
      this.hjdxzqhdm,
      this.hjddzbm,
      this.hjdssbm,
      this.hjdssmc,
      this.hjddsbm,
      this.hjddsmc,
      this.hjdqxbm,
      this.hjdqxmc,
      this.hjdjdbm,
      this.hjdjdmc,
      this.hjdcbm,
      this.hjdcmc,
      this.nl);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
