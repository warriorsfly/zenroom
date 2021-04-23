import 'package:zenroom/data/entity/user.dart';
import 'package:zenroom/data/api.dart';

enum Loggin {
  Logging,
  Success,
  Failed,
}

class Account {
  final Loggin loggin;
  final String msg;
  final User? uloggin;

  Account({required this.loggin, required this.msg, required this.uloggin});
}

/// 登陆人信息
Future<Account> getUserInf(String? sc) async {
  if (sc != null) {
    try {
      return await descrypt(sc)
          .then((value) => getUserInfo('01', value.data?.zjhm ?? ''))
          .then((value) =>
              Account(loggin: Loggin.Success, msg: '', uloggin: value.data));
    } catch (e) {
      return Account(loggin: Loggin.Failed, msg: e.toString(), uloggin: null);
    }
  } else {
    return Account(loggin: Loggin.Failed, msg: 'no sec in url', uloggin: null);
  }
}
