import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:zenroom/data/entity/resp.dart';
import 'package:zenroom/data/entity/user.dart';

const String _end_point = r'p.zjgwsjk.com';
var _client = http.Client();

Future<RespSingle<User>> getUserInfo(String zjlx, String zjhm) async {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  };
  return await _client
      .post(Uri.http(_end_point, '/ehr/api/user/archives'),
          headers: headers, body: jsonEncode({'zjlx': zjlx, 'zjhm': zjhm}))
      .then((value) => jsonDecode(value.body))
      .then((value) => RespSingle.fromJson(
          value, (user) => User.fromJson(user as Map<String, dynamic>)));
}
