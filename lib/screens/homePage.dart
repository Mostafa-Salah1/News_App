import 'package:flutter/material.dart';
import 'package:news_app/components/categoryListView.dart';
import 'package:news_app/components/newsItemListViewBuilder.dart';
import 'package:news_app/models/categoryModel.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Categorymodel> cModels = const [
    Categorymodel(
        categoryimg: "assets/business.avif", categoryName: "Business"),
    Categorymodel(
        categoryimg: "assets/entertaiment.avif", categoryName: "Entertainment"),
    Categorymodel(categoryimg: "assets/general.avif", categoryName: "General"),
    Categorymodel(categoryimg: "assets/health.avif", categoryName: "Health"),
    Categorymodel(categoryimg: "assets/science.avif", categoryName: "Science"),
    Categorymodel(categoryimg: "assets/sports.avif", categoryName: "Sports"),
    Categorymodel(
        categoryimg: "assets/technology.jpeg", categoryName: "Technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "News",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "Cloud",
                style: TextStyle(
                    color: const Color.fromARGB(255, 206, 185, 0),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Categorylistview(cModel: cModels),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            newsItemListViewBuilder(categoryOfThePage: 'general',),
          ],
        ),
      ),
    );
  }
}

