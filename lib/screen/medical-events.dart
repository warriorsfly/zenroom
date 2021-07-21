import 'package:flutter/cupertino.dart';
import 'package:zenroom/data/api.dart';
import 'package:zenroom/data/entity/resp.dart';
import 'package:zenroom/data/entity/virecord.dart';
import 'package:zenroom/screen/medical-event.dart';
import 'package:zenroom/widget/item_record.dart';

/// 就诊记录页面
class MedicalEventsScreen extends StatefulWidget {
  final String empi;

  final List<MedicalEvent> recors = [];
  static const String route = '/medical-events';

  MedicalEventsScreen({Key? key, required this.empi}) : super(key: key);
  @override
  _MedicalEventsScreenState createState() => _MedicalEventsScreenState();
}

class _MedicalEventsScreenState extends State<MedicalEventsScreen> {
  int start = 0;
  int pageSize = 5;
  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          // middle: CupertinoSearchTextField(),
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: FutureBuilder(
              future: getJzjl(this.widget.empi, '', '', '', 0, 10),
              builder: (_, AsyncSnapshot<RespList<MedicalEvent>> snap) {
                switch (snap.connectionState) {
                  case ConnectionState.done:
                    return Container(
                      child: ListView.builder(
                          itemCount: snap.data?.data.length ?? 0,
                          itemBuilder: (ctx, index) => RecordItemWidget(
                                title: snap.data?.data[index].jgmc ?? '',
                                description: snap.data?.data[index].zdmc ?? '',
                                expireAt: snap.data?.data[index].kssj ?? '',
                                onPressed: () => {
                                  Navigator.of(context).push<void>(
                                      CupertinoPageRoute(
                                          builder: (ctx) =>
                                              MedicalEventScreen()))
                                },
                              )),
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
