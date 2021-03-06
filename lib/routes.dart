import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:zenroom/screen/home.dart';
import 'package:zenroom/screen/login.dart';
import 'package:zenroom/screen/medical-events.dart';

import 'data/provider/root_model.dart';

typedef PathWidgetBuilder = Widget Function(BuildContext, String);

class Path {
  const Path(this.pattern, this.builder);

  /// A RegEx string for route matching.
  final String pattern;

  final PathWidgetBuilder builder;
}

class RouteConfiguration {
  /// List of [Path] to for route matching. When a named route is pushed with
  /// [Navigator.pushNamed], the route name is matched with the [Path.pattern]
  /// in the list below. As soon as there is a match, the associated builder
  /// will be returned. This means that the paths higher up in the list will
  /// take priority.
  static List<Path> paths = [
    Path(
      r'^' + LoginScreen.route,
      (context, match) => LoginScreen(),
    ),
    Path(
      r'^' + MedicalEventsScreen.route,
      (context, match) => MedicalEventsScreen(empi: match),
    ),

    /// 根节点最后验证
    Path(
      r'^/',
      (context, match) => FutureProvider<AccountStatus?>(
        create: (_) {
          var uri = Uri.parse(match);
          var params = uri.queryParameters;
          if (params.containsKey('sec')) {
            return getUserInf(params['sec']!);
          } else {
            return Future.value(AccountStatus(
                state: SignStatus.UnSign, msg: '', account: null));
          }
        },
        initialData:
            AccountStatus(state: SignStatus.Signing, msg: '', account: null),
        child: HomeScreen(),
      ),
    ),
  ];

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    for (final path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if (regExpPattern.hasMatch(settings.name!)) {
        final firstMatch = regExpPattern.firstMatch(settings.name!);
        final match =
            (firstMatch?.groupCount == 1) ? firstMatch?.group(1) : null;
        if (kIsWeb) {
          return CupertinoPageRoute<void>(
            builder: (context) =>
                path.builder(context, match ?? settings.name!),
            settings: settings,
          );
        } else {
          return CupertinoPageRoute<void>(
            builder: (context) =>
                path.builder(context, match ?? settings.name!),
            settings: settings,
          );
        }
      }
    }

    // If no match was found, we let [WidgetsApp.onUnknownRoute] handle it.
    return null;
  }
}
