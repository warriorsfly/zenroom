import 'package:zenroom/data/entity/user.dart';
import 'package:zenroom/data/api.dart';

enum SignStatus {
  /// 正在登陆
  Signing,

  /// 登陆成功
  SignedIn,

  /// 登陆失败
  SignInFailed,

  /// 没有登陆过
  UnSign,
}

class AccountStatus {
  final SignStatus state;
  final String msg;
  final User? account;

  AccountStatus(
      {required this.state, required this.msg, required this.account});
}

/// 登陆人信息
Future<AccountStatus> getUserInf(String? sc) async {
  if (sc != null) {
    try {
      return await descrypt(sc)
          .then((value) => getUserInfo('01', value.data?.zjhm ?? ''))
          .then((value) => AccountStatus(
              state: SignStatus.SignedIn, msg: '', account: value.data));
    } catch (e) {
      return AccountStatus(
          state: SignStatus.SignInFailed, msg: e.toString(), account: null);
    }
  } else {
    return AccountStatus(
        state: SignStatus.UnSign, msg: 'no sec in url', account: null);
  }
}
