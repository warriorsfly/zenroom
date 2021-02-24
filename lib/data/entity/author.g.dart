// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Author> _$authorSerializer = new _$AuthorSerializer();

class _$AuthorSerializer implements StructuredSerializer<Author> {
  @override
  final Iterable<Type> types = const [Author, _$Author];
  @override
  final String wireName = 'Author';

  @override
  Iterable<Object> serialize(Serializers serializers, Author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'bio',
      serializers.serialize(object.bio, specifiedType: const FullType(String)),
      'avatar',
      serializers.serialize(object.avatar,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(DateTime)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  Author deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Author extends Author {
  @override
  final int id;
  @override
  final String username;
  @override
  final String bio;
  @override
  final String avatar;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;

  factory _$Author([void Function(AuthorBuilder)? updates]) =>
      (new AuthorBuilder()..update(updates)).build();

  _$Author._(
      {required this.id,
      required this.username,
      required this.bio,
      required this.avatar,
      required this.created_at,
      required this.updated_at})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Author', 'id');
    BuiltValueNullFieldError.checkNotNull(username, 'Author', 'username');
    BuiltValueNullFieldError.checkNotNull(bio, 'Author', 'bio');
    BuiltValueNullFieldError.checkNotNull(avatar, 'Author', 'avatar');
    BuiltValueNullFieldError.checkNotNull(created_at, 'Author', 'created_at');
    BuiltValueNullFieldError.checkNotNull(updated_at, 'Author', 'updated_at');
  }

  @override
  Author rebuild(void Function(AuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorBuilder toBuilder() => new AuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Author &&
        id == other.id &&
        username == other.username &&
        bio == other.bio &&
        avatar == other.avatar &&
        created_at == other.created_at &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), username.hashCode), bio.hashCode),
                avatar.hashCode),
            created_at.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Author')
          ..add('id', id)
          ..add('username', username)
          ..add('bio', bio)
          ..add('avatar', avatar)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class AuthorBuilder implements Builder<Author, AuthorBuilder> {
  _$Author? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  DateTime? _created_at;
  DateTime? get created_at => _$this._created_at;
  set created_at(DateTime? created_at) => _$this._created_at = created_at;

  DateTime? _updated_at;
  DateTime? get updated_at => _$this._updated_at;
  set updated_at(DateTime? updated_at) => _$this._updated_at = updated_at;

  AuthorBuilder();

  AuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _bio = $v.bio;
      _avatar = $v.avatar;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Author;
  }

  @override
  void update(void Function(AuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Author build() {
    final _$result = _$v ??
        new _$Author._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Author', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'Author', 'username'),
            bio: BuiltValueNullFieldError.checkNotNull(bio, 'Author', 'bio'),
            avatar: BuiltValueNullFieldError.checkNotNull(
                avatar, 'Author', 'avatar'),
            created_at: BuiltValueNullFieldError.checkNotNull(
                created_at, 'Author', 'created_at'),
            updated_at: BuiltValueNullFieldError.checkNotNull(
                updated_at, 'Author', 'updated_at'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
