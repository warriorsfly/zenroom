import 'package:flutter/cupertino.dart';
import 'package:zenroom/data/api.dart';
import 'package:zenroom/data/entity/resp.dart';
import 'package:zenroom/data/entity/virecord.dart';
import 'package:zenroom/widget/item_record.dart';

/// 就诊记录页面
class RecordScreen extends StatefulWidget {
  final String empi;
  int start = 0;
  int pageSize = 5;

  final List<ViRecord> recors = [];
  static const String route = '/vis';

  RecordScreen({Key? key, required this.empi}) : super(key: key);
  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          // middle: CupertinoSearchTextField(),
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Container(
          //   height: 100,
          //   width: MediaQuery.of(context).size.width,
          //   child: Column(
          //     children: [
          //       Text(DateTime.now().toString()),
          //     ],
          //   ),
          // ),
          Expanded(
            child: FutureBuilder(
              future: getJzjl(this.widget.empi, '', '', '', 0, 10),
              builder: (_, AsyncSnapshot<RespList<ViRecord>> snap) {
                switch (snap.connectionState) {
                  case ConnectionState.done:
                    return Container(
                      child: ListView.builder(
                          itemCount: snap.data?.data.length ?? 0,
                          itemBuilder: (ctx, index) => RecordWidget(
                              title: snap.data?.data[index].jgmc ?? '',
                              description: snap.data?.data[index].zdmc ?? '',
                              expireAt: snap.data?.data[index].kssj ?? '')),
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
          ),
        ],
      ));
}
