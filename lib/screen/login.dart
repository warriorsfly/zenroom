import 'package:flutter/cupertino.dart';

class LoginScreen extends StatelessWidget {
  // static const String route = '/login';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ],
          ),
        ),
      ),
    );
  }
}
