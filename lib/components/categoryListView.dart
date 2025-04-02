import 'package:flutter/material.dart';
import 'package:news_app/components/category.dart';
import 'package:news_app/models/categoryModel.dart';

class Categorylistview extends StatelessWidget {
  const Categorylistview({
    super.key,
    required this.cModel,
  });

  final List<Categorymodel> cModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cModel.length,
        itemBuilder: (context, index) => Category(cModel: cModel[index]),
      ),
    );
  }
}