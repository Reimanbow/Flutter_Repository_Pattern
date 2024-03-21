import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:dio/dio.dart";

import "package:repository/data_source/article_data_source.dart";

final articleDataSourceProvider = Provider.autoDispose<ArticleDataSource>(
    (ref) =>
        ArticleDataSource(Dio(BaseOptions(contentType: "application/json"))));
