import 'package:flutter/cupertino.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:zenroom/routes.dart';
import 'package:zenroom/screen/home.dart';

void main() {
  // setUrlStrategy(PathUrlStrategy());
  runApp(ZenApp());
}

class ZenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CupertinoApp(
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
        title: 'Allen Walker',
        initialRoute: HomeScreen.route,
      );
}
