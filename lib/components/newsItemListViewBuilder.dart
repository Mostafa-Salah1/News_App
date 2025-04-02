import 'package:flutter/material.dart';
import 'package:news_app/components/newsItemListView.dart';
import 'package:news_app/models/articleModel.dart';
import 'package:news_app/services/news_service.dart';

class newsItemListViewBuilder extends StatefulWidget {
  const newsItemListViewBuilder({
    super.key,
    required this.categoryOfThePage
  });
  final String categoryOfThePage;
  @override
  State<newsItemListViewBuilder> createState() =>
      _newsItemListViewBuilderState();
}

class _newsItemListViewBuilderState extends State<newsItemListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getNews(category:widget.categoryOfThePage);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return newsItemListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Center(
                child: Text("Oops, there was an Error"),
              ),
            );
          } else {
            return SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
    // return isLoading
    //     ? SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? newsItemListView(
    //             articles: articles,
    //           )
    //         : SliverToBoxAdapter(
    //             child: Center(
    //               child: Text("Oops, there was an Error"),
    //             ),
    //           );
  }
}
