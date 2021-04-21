import 'package:flutter/cupertino.dart';
import 'package:zenroom/widget/icon_menu.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  PageController _pager = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Container(
            margin: EdgeInsets.all(6),
            child: CupertinoSearchTextField(
              padding: EdgeInsets.all(6),
              placeholder: 'Allen Walker',
            )),
      ),
      child: CustomScrollView(slivers: <Widget>[
        // SliverSafeArea(
        //   sliver: PageView.builder(
        //     itemCount: 1,
        //     onPageChanged: (idx) {
        //       // setState(() {});
        //     },
        //     controller: _pager,
        //     itemBuilder: (ctx, idx) => Container(),
        //   ),
        // )
        SliverSafeArea(
            sliver: SliverPadding(
                padding: EdgeInsets.all(16),
                sliver: SliverGrid.count(
                  crossAxisCount: 4,
                  children: [
                    IconMenu(
                        title: '就诊记录',
                        icon: 'assets/icon/jzjl.png',
                        onPressed: () => {}),
                    IconMenu(
                        title: '检查检验',
                        icon: 'assets/icon/yjbg.png',
                        onPressed: () => {}),
                    IconMenu(
                        title: '体检报告',
                        icon: 'assets/icon/tjbg.png',
                        onPressed: () => {}),
                    IconMenu(
                        title: '用药记录',
                        icon: 'assets/icon/yyjl.png',
                        onPressed: () => {}),
                    IconMenu(
                        title: '健康画像',
                        icon: 'assets/icon/yygh.png',
                        onPressed: () => {}),
                    IconMenu(
                        title: '健康周报',
                        icon: 'assets/icon/zdgj.png',
                        onPressed: () => {}),
                    IconMenu(
                        title: '健康管理',
                        icon: 'assets/icon/jkpg.png',
                        onPressed: () => {}),
                    IconMenu(
                        title: '公共卫生',
                        icon: 'assets/icon/jknz.png',
                        onPressed: () => {}),
                  ],
                )))
      ]));

  @override
  void dispose() {
    _pager.dispose();
    super.dispose();
  }
}
