import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:zenroom/data/provider/root_model.dart';
import 'package:zenroom/screen/index.dart';
import 'package:zenroom/screen/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String baseRoute = '/';

  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ctx) {
    var acc = ctx.watch<Account?>();
    switch (acc?.loggin) {
      case Loggin.Logging:
        return CupertinoActivityIndicator();
      case Loggin.Success:
        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.home,
                    size: 18,
                  ),
                  label: "首页"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.heart_slash,
                    size: 18,
                  ),
                  label: "健康视图"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.alarm,
                    size: 18,
                  ),
                  label: "健康管理"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.person,
                    size: 18,
                  ),
                  activeIcon: Icon(
                    CupertinoIcons.person,
                    size: 18,
                  ),
                  label: "我"),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (_) => IndexScreen(),
                );
              default:
                return CupertinoTabView(
                  builder: (_) => SettingsScreen(),
                );
            }
          },
        );

      default:
        return Container(
          child: Text('登陆失败${acc?.msg}'),
        );
    }
  }
}
