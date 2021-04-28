import 'package:flutter/cupertino.dart';

class LoginScreen extends StatelessWidget {
  // static const String route = '/login';
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Container(
      width: 240,
      height: 160,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Icon(CupertinoIcons.person_fill),
                flex: 1,
              ),
              Expanded(
                child: CupertinoTextField(
                  placeholder: '请输入用户名',
                ),
                flex: 9,
              ),
            ],
          )),
          Expanded(
              child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Icon(CupertinoIcons.lock_fill),
                flex: 1,
              ),
              Expanded(
                child: CupertinoTextField(
                  placeholder: '用户密码',
                  keyboardType: TextInputType.visiblePassword,
                ),
                flex: 9,
              ),
            ],
          )),
          Expanded(
              child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CupertinoButton(
                  child: Text('登陆'),
                  onPressed: () => {},
                ),
                flex: 1,
              ),
              Expanded(
                child: CupertinoButton(
                  child: Text('取消'),
                  onPressed: () => {},
                ),
                flex: 1,
              ),
            ],
          )),
        ],
      ),
    )));
  }
}
