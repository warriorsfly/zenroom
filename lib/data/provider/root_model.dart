import 'package:flutter/cupertino.dart';
import 'package:zenroom/data/entity/resp.dart';
import 'package:zenroom/data/entity/user.dart';
import 'package:zenroom/data/api.dart';

class RootModel extends ChangeNotifier {
  /// 登陆人信息
  late RespSingle<User?> _account;

  RespSingle<User?> get account => _account;

  set account(RespSingle<User?> user) {
    this._account = user;
    notifyListeners();
  }

  void getUserInf() async {
    var params = Uri.base.queryParameters;

    if (params.isNotEmpty &&
        params.containsKey('sec') &&
        params['sec'] != null) {
      try {
        await descrypt(params['sec']!)
            .then((value) => getUserInfo('01', value.data?.zjhm ?? ''))
            .then((value) => {_account = value});
      } catch (e) {
        _account = RespSingle(status: '500', data: null, msg: e.toString());
      }
    }
  }
}
