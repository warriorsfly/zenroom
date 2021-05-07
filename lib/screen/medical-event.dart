import 'package:flutter/cupertino.dart';

class MedicalEventScreen extends StatefulWidget {
  @override
  _MedicalEventScreenState createState() => _MedicalEventScreenState();
}

class _MedicalEventScreenState extends State<MedicalEventScreen> {
  int _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          ),
      child: Container(
        child: CupertinoSlidingSegmentedControl(
            children: {0: Text('诊疗数据'), 1: Text('检查检验'), 2: Text('用药记录')},
            groupValue: _sliding,
            onValueChanged: (ind) => {
                  setState(() => {_sliding = ind as int})
                }),
      ),
    );
  }
}
