import 'dart:convert';

import 'package:zenroom/data/api.dart';

Future<void> main() async {
  var user = await getUserInfo('01', '320100192806289851');
  print('user:' + jsonEncode(user.data));

  if (user.status == "200") {
    var records =
        await getJzjl(user.data.empi, '', '2000-01-01', '2021-12-01', 0, 5);
    print('virecords:' + jsonEncode(records.data));
  }
}
