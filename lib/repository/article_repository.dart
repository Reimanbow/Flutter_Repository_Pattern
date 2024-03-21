import "package:repository/model/articles.dart";

abstract class ArticleRepository {
  Future<Articles> getArticles();
}
