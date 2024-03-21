import "package:repository/repository/article_repository.dart";
import "package:repository/model/article.dart";
import "package:repository/data_source/article_data_source.dart";
import "package:repository/config/config.dart";

class ArticleRepositoryImpl implements ArticleRepository {
  ArticleRepositoryImpl({
    required ArticleDataSource dataSource,
  }) : _dataSource = dataSource;

  final ArticleDataSource _dataSource;

  @override
  Future<dynamic> getArticles() async {
    return _dataSource
        .getArticles(
      ApiParameter.accessToken,
      ApiParameter.page,
      ApiParameter.perPage,
    )
        .then((value) {
      return value
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList();
    });
  }
}
