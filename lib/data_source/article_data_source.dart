import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "article_data_source.g.dart";

@RestApi(baseUrl: "https://qiita.com/api/v2")
abstract class ArticleDataSource {
  factory ArticleDataSource(Dio dio, {String baseUrl}) = _ArticleDataSource;

  @GET("/items")
  Future<dynamic> getArticles(
    @Header("Authorization") String authorization,
    @Query("page") int? page,
    @Query("per_page") int? perPage,
  );
}
