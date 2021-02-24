import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'author.dart';
import 'serializers.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  int get id;

  Author get author;

  String get slug;

  String get title;

  String get description;

  String get body;

  BuiltList<String> get tags;

  int get favorites_count;

  DateTime get created_at;
  DateTime get updated_at;

  Article._();
  factory Article([void Function(ArticleBuilder) updates]) = _$Article;

  // Map<String, dynamic> toJson() {
  //   return serializers.serializeWith(Article.serializer, this);
  // }

  // static Article fromJson(Map<String, dynamic> json) {
  //   return serializers.deserializeWith(Article.serializer, json);
  // }

  static Serializer<Article> get serializer => _$articleSerializer;
}
