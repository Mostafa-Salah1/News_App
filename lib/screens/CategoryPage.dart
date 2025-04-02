import 'package:flutter/material.dart';
import 'package:news_app/components/newsItemListViewBuilder.dart';

class Categorypage extends StatelessWidget {
  const Categorypage({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            newsItemListViewBuilder(
              categoryOfThePage: category,
            ),
          ],
        ),
      ),
    );
  }
}
