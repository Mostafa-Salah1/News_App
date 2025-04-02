class ArticleModel {
  final String img;
  final String title;
  final String subTitle;
  final String url;
  ArticleModel(
      {required this.img, required this.title, required this.subTitle, required this.url});
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        img: json['urlToImage'],
        title: json['title'],
        subTitle: json['description'],
        url: json['url']);
  }
}
