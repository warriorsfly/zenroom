import 'package:flutter/cupertino.dart';

class RecordDetailScreen extends StatefulWidget {
  int _sliding = 0;
  @override
  _RecordDetailScreenState createState() => _RecordDetailScreenState();
}

class _RecordDetailScreenState extends State<RecordDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl(
        children: {0: Text('诊疗数据'), 1: Text('检查检验'), 2: Text('用药记录')},
        groupValue: widget._sliding,
        onValueChanged: (ind) => {
              setState(() => {widget._sliding = ind as int})
            });
  }
}
