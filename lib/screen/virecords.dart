import 'package:flutter/cupertino.dart';
import 'package:zenroom/data/api.dart';
import 'package:zenroom/data/entity/resp.dart';
import 'package:zenroom/data/entity/virecord.dart';

/// 就诊记录页面
class ViRecordScreen extends StatefulWidget {
  final String empi;
  int start = 0;
  int pageSize = 5;

  final List<ViRecord> recors = [];
  static const String baseRoute = '/vis';

  ViRecordScreen({Key? key, required this.empi}) : super(key: key);
  @override
  _ViRecordScreenState createState() => _ViRecordScreenState();
}

class _ViRecordScreenState extends State<ViRecordScreen> {
  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        child: FutureBuilder(
          future: getJzjl(this.widget.empi, '', '', '', 0, 10),
          builder: (_, AsyncSnapshot<RespList<ViRecord>> snap) {
            switch (snap.connectionState) {
              case ConnectionState.done:
                return Container(
                  child: Text('加载完毕'),
                );
              default:
                return Container(
                  child: Center(
                    child: CupertinoActivityIndicator(),
                  ),
                );
            }
          },
        ),
      );
}
