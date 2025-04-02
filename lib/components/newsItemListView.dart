import 'package:flutter/material.dart';
import 'package:news_app/components/newsItem.dart';
import 'package:news_app/models/articleModel.dart';

class newsItemListView extends StatelessWidget {
  const newsItemListView({
    super.key,
    required this.articles
  });

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Newsitem(article: articles[index]),
      ),
    );
  }
}
