import "package:flutter/material.dart";

import "package:repository/model/article.dart";

class ArticleItem extends StatelessWidget {
  const ArticleItem({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        child: Card(
          child: ListTile(
            leading: Image.network(article.user.profileImageUrl),
            title: Text(article.title),
            subtitle: Text("${article.user.name}, ${article.createdAt}"),
          ),
        ),
      ),
    );
  }
}
