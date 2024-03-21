import "package:repository/model/article.dart";
import "package:repository/repository/article_repository.dart";
import "package:repository/data_source/article_data_source.dart";
import "package:repository/config/config.dart";

class ArticleRepositoryImpl implements ArticleRepository {
  ArticleRepositoryImpl({
    required ArticleDataSource dataSource,
  }) : _dataSource = dataSource;

  final ArticleDataSource _dataSource;

  @override
  Future<Article> getArticles() async {
    return _dataSource.getArticles(
      ApiParameter.accessToken,
      ApiParameter.page,
      ApiParameter.perPage,
    );
  }
}
