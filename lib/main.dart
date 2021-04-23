import 'package:flutter/cupertino.dart';
import 'package:zenroom/routes.dart';
import 'package:zenroom/screen/home.dart';

void main() {
  runApp(ZenApp());
}

class ZenApp extends StatelessWidget {
  // final bool isTestModel;
  // final String initialRoute;

  @override
  Widget build(BuildContext context) => CupertinoApp(
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
        title: 'Allen Walker',
        initialRoute: HomeScreen.baseRoute,
      );
}
