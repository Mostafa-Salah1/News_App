import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';
import 'WebViewExample.dart';

class Newsitem extends StatelessWidget {
  const Newsitem({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Webviewexample(url: article.url,);
        }));
      },
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: NetworkImage(
                    article.img),
                fit: BoxFit.fill,
                height: 250,
                width: double.infinity,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black87),
          ),
          Text(
            article.subTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
