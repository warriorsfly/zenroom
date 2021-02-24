import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'article.dart';
import 'author.dart';

part 'serializers.g.dart';

@SerializersFor([
  Article,
  Author,
])
final Serializers serializers = _$serializers;
