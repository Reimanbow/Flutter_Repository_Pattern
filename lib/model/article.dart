import "package:freezed_annotation/freezed_annotation.dart";

import "user.dart";

part "article.freezed.dart";
part "article.g.dart";

// Qiitaに投稿された記事
@freezed
class Article with _$Article {
  const factory Article({
    @JsonKey(name: "created_at") required String createdAt,
    required String title,
    required String url,
    required User user,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
