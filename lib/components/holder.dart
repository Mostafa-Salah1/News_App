// import 'package:flutter/material.dart';
// import 'package:news_app/components/newsItem.dart';
// import 'package:news_app/models/articleModel.dart';
// import 'package:news_app/services/news_service.dart';

// class newsItemListView extends StatefulWidget {
//   const newsItemListView({
//     super.key,
//   });

//   @override
//   State<newsItemListView> createState() => _newsItemListViewState();
// }

// class _newsItemListViewState extends State<newsItemListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService().getGeneralNews(category: 'general');
//     //print('Fetched ${articles.length} articles'); // Debug print
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) => Newsitem(article: articles[index]),
//             ),
//           );
//   }
// }
