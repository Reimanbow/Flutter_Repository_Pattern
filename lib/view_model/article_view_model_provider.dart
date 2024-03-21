import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:repository/repository/article_repository_provider.dart";
import "package:repository/view_model/article_view_model.dart";

final articleViewModelProvider =
    ChangeNotifierProvider.autoDispose<ArticleViewModel>(
  (ref) {
    ArticleViewModel viewModel =
        ArticleViewModel(repository: ref.watch(articleRepositoryProvider));
    viewModel.getArticles();
    return viewModel;
  },
);
