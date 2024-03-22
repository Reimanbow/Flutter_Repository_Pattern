import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:repository/config/config.dart";
import "package:repository/view_model/article_view_model_provider.dart";
import "package:repository/view/article_item.dart";

class ArticlePage extends ConsumerWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(articleViewModelProvider);
    final articles = viewModel.articles;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.appBarText),
      ),
      body: (articles != null)
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    ArticleItem(article: articles[index]),
              ),
            )
          : const Center(
              child: Text("null"),
            ),
    );
  }
}
