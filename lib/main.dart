import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:zenroom/screen/home.dart';

import 'data/entity/user.dart';
import 'data/provider/root_model.dart';

void main() {
  runApp(ZenApp());
}

class ZenApp extends StatelessWidget {
  // final bool isTestModel;
  // final String initialRoute;

  @override
  Widget build(BuildContext context) => Provider<RootModel>(
        create: (_) => RootModel(),
        child: CupertinoApp(
          title: '禅',
          initialRoute: '/',
          routes: {
            '/': (_) => HomeScreen(),
          },
        ),
      );
}
