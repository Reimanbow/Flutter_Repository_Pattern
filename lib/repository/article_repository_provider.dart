import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:repository/repository/article_repository_impl.dart";
import "package:repository/data_source/article_data_source_provider.dart";

final articleRepositoryProvider = Provider.autoDispose<ArticleRepositoryImpl>(
    (ref) => ArticleRepositoryImpl(
        dataSource: ref.watch(articleDataSourceProvider)));
