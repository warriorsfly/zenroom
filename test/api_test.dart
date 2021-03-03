import 'package:zenroom/data/api.dart';

Future<void> main() async {
  var user = await getUserInfo('01', '320521194602173614');
  print(user.toString());
}
