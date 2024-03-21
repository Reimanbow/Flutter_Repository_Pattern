import "package:flutter/foundation.dart";

import "package:repository/model/articles.dart";
import "package:repository/repository/article_repository.dart";

class ArticleViewModel extends ChangeNotifier {
  ArticleViewModel({required ArticleRepository repository})
      : _repository = repository;

  final ArticleRepository _repository;

  Articles? _articles;

  Articles? get articles => _articles;

  Future<void> getArticles() async {
    return _repository
        .getArticles()
        .then((value) {
          _articles = value;
        })
        .catchError((error) {})
        .whenComplete(() => notifyListeners());
  }
}
