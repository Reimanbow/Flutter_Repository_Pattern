import "package:freezed_annotation/freezed_annotation.dart";

import "article.dart";

part "articles.freezed.dart";
part "articles.g.dart";

// 記事一覧
@freezed
class Articles with _$Articles {
  const factory Articles({
    required List<Article> article,
  }) = _Articles;

  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);
}
