import 'package:flutter/cupertino.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
        child: Text("Login"),
        onPressed: () {
          // Navigator.pushNamed(context, '/login');
          // Navigator.of(context, rootNavigator: true)
          //     .push<void>(CupertinoPageRoute(
          //         // fullscreenDialog: true,
          //         builder: (context) => LoginScreen(),
          //         title: 'login'));
        },
      ),
    );
  }
}
