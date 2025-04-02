import 'package:dio/dio.dart';
import 'package:news_app/models/articleModel.dart';

class NewsService {
  final dio = Dio();
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=1afabddebd4c4d31a5351185974a4ea3');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articlesM = jsonData['articles'];
      List<ArticleModel> articles = [];
      for (var article in articlesM) {
        if (article['urlToImage'] != null &&
            article['description'] != null &&
            article['title'] != null &&
            article['url'] != null)
          articles.add(ArticleModel.fromJson(article));
      }
      return articles;
    } catch (e) {
      return [];
    }
  }
}
