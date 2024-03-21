import "package:repository/model/articles.dart";
import "package:repository/repository/article_repository.dart";
import "package:repository/data_source/article_data_source.dart";
import "package:repository/config/config.dart";

class ArticleRepositoryImpl implements ArticleRepository {
  ArticleRepositoryImpl({
    required ArticleDataSource dataSource,
  }) : _dataSource = dataSource;

  final ArticleDataSource _dataSource;

  @override
  Future<Articles> getArticles() async {
    return _dataSource.getArticles(AccessToken.accessToken);
  }
}
