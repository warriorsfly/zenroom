// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Article> _$articleSerializer = new _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable<Object> serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(Author)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'favorites_count',
      serializers.serialize(object.favorites_count,
          specifiedType: const FullType(int)),
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
  Article deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

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
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(Author)) as Author);
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'favorites_count':
          result.favorites_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$Article extends Article {
  @override
  final int id;
  @override
  final Author author;
  @override
  final String slug;
  @override
  final String title;
  @override
  final String description;
  @override
  final String body;
  @override
  final BuiltList<String> tags;
  @override
  final int favorites_count;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;

  factory _$Article([void Function(ArticleBuilder)? updates]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
      {required this.id,
      required this.author,
      required this.slug,
      required this.title,
      required this.description,
      required this.body,
      required this.tags,
      required this.favorites_count,
      required this.created_at,
      required this.updated_at})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Article', 'id');
    BuiltValueNullFieldError.checkNotNull(author, 'Article', 'author');
    BuiltValueNullFieldError.checkNotNull(slug, 'Article', 'slug');
    BuiltValueNullFieldError.checkNotNull(title, 'Article', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, 'Article', 'description');
    BuiltValueNullFieldError.checkNotNull(body, 'Article', 'body');
    BuiltValueNullFieldError.checkNotNull(tags, 'Article', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        favorites_count, 'Article', 'favorites_count');
    BuiltValueNullFieldError.checkNotNull(created_at, 'Article', 'created_at');
    BuiltValueNullFieldError.checkNotNull(updated_at, 'Article', 'updated_at');
  }

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        id == other.id &&
        author == other.author &&
        slug == other.slug &&
        title == other.title &&
        description == other.description &&
        body == other.body &&
        tags == other.tags &&
        favorites_count == other.favorites_count &&
        created_at == other.created_at &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), author.hashCode),
                                    slug.hashCode),
                                title.hashCode),
                            description.hashCode),
                        body.hashCode),
                    tags.hashCode),
                favorites_count.hashCode),
            created_at.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('id', id)
          ..add('author', author)
          ..add('slug', slug)
          ..add('title', title)
          ..add('description', description)
          ..add('body', body)
          ..add('tags', tags)
          ..add('favorites_count', favorites_count)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  AuthorBuilder? _author;
  AuthorBuilder get author => _$this._author ??= new AuthorBuilder();
  set author(AuthorBuilder? author) => _$this._author = author;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  int? _favorites_count;
  int? get favorites_count => _$this._favorites_count;
  set favorites_count(int? favorites_count) =>
      _$this._favorites_count = favorites_count;

  DateTime? _created_at;
  DateTime? get created_at => _$this._created_at;
  set created_at(DateTime? created_at) => _$this._created_at = created_at;

  DateTime? _updated_at;
  DateTime? get updated_at => _$this._updated_at;
  set updated_at(DateTime? updated_at) => _$this._updated_at = updated_at;

  ArticleBuilder();

  ArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _author = $v.author.toBuilder();
      _slug = $v.slug;
      _title = $v.title;
      _description = $v.description;
      _body = $v.body;
      _tags = $v.tags.toBuilder();
      _favorites_count = $v.favorites_count;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Article build() {
    _$Article _$result;
    try {
      _$result = _$v ??
          new _$Article._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Article', 'id'),
              author: author.build(),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'Article', 'slug'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'Article', 'title'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'Article', 'description'),
              body: BuiltValueNullFieldError.checkNotNull(
                  body, 'Article', 'body'),
              tags: tags.build(),
              favorites_count: BuiltValueNullFieldError.checkNotNull(
                  favorites_count, 'Article', 'favorites_count'),
              created_at: BuiltValueNullFieldError.checkNotNull(
                  created_at, 'Article', 'created_at'),
              updated_at: BuiltValueNullFieldError.checkNotNull(
                  updated_at, 'Article', 'updated_at'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();

        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Article', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
