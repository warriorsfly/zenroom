import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:zenroom/data/entity/resp.dart';
import 'package:zenroom/data/entity/user.dart';
import 'package:zenroom/data/entity/virecord.dart';

import 'entity/descrypt_result.dart';

// const String _end_point = r'192.168.3.12:8080';
const String _end_point = r'172.17.25.42:8080';
// const String _end_point = r'p.zjgwsjk.com';
var _client = http.Client();

Map<String, String> _headerJson = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
};

/// 解密sec
Future<RespSingle<DescryptResult?>> descrypt(String sec) async {
  return await _client
      .post(Uri.http(_end_point, '/ehr/api/getDecodeParams'),
          headers: _headerJson,
          body: jsonEncode(
              {'type': 'sec', 'systemType': 'EHRMOBILE', 'encodeParam': sec}))
      .then((value) => jsonDecode(value.body))
      .then((value) => RespSingle.fromJson(value,
          (user) => DescryptResult.fromJson(user as Map<String, dynamic>)));
}

/// 获取病人基本信息
Future<RespSingle<User>> getUserInfo(String zjlx, String zjhm) async {
  return await _client
      .post(Uri.http(_end_point, '/ehr/api/user/archives'),
          headers: _headerJson, body: jsonEncode({'zjlx': zjlx, 'zjhm': zjhm}))
      .then((value) => jsonDecode(value.body))
      .then((value) => RespSingle.fromJson(
          value, (user) => User.fromJson(user as Map<String, dynamic>)));
}

/// 获取病人就诊信息
Future<RespList<ViRecord>> getJzjl(String empi, String jkwtmc, String kssj,
    String jssj, int start, int limit) async {
  return await _client
      .post(Uri.http(_end_point, '/ehr/api/index/medicalrecord'),
          headers: _headerJson,
          body: jsonEncode({
            'empi': empi,
            'jkwtmc': jkwtmc,
            'sjbm': 'C0001',
            'kssj': kssj,
            'jssj': jssj,
            'start': start,
            'limit': limit
          }))
      .then((value) => jsonDecode(value.body))
      .then((value) => RespList.fromJson(
          value, (vi) => ViRecord.fromJson(vi as Map<String, dynamic>)));
}
