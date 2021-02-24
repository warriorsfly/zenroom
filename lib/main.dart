import 'package:flutter/cupertino.dart';
import 'package:zenroom/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ZenApp();
}

class ZenApp extends StatelessWidget {
  // final bool isTestModel;
  // final String initialRoute;

  @override
  Widget build(BuildContext context) => CupertinoApp(
        title: '禅',
        initialRoute: '/',
        routes: {
          '/': (_) => HomeScreen(),
        },
      );
}
