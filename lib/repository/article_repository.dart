import "package:repository/model/article.dart";

abstract class ArticleRepository {
  Future<Article> getArticles();
}
