import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'author.g.dart';

abstract class Author implements Built<Author, AuthorBuilder> {
  int get id;
  String get username;
  String get bio;
  String get avatar;
  DateTime get created_at;
  DateTime get updated_at;

  Author._();
  factory Author([void Function(AuthorBuilder) updates]) = _$Author;

  // Map<String, dynamic> toJson() {
  //   return serializers.serializeWith(Author.serializer, this);
  // }

  // static Author fromJson(Map<String, dynamic> json) {
  //   return serializers.deserializeWith(Author.serializer, json);
  // }

  static Serializer<Author> get serializer => _$authorSerializer;
}
