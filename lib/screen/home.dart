import 'package:flutter/cupertino.dart';
import 'package:zenroom/screen/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.double_music_note), label: "首页"),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.double_music_note), label: "健康"),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.double_music_note), label: "健康管理"),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                activeIcon: Icon(CupertinoIcons.person_solid),
                label: "我"),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            default:
              return CupertinoTabView(
                builder: (_) => SettingsScreen(),
              );
          }
        },
      );
}
