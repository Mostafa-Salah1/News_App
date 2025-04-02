import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/screens/CategoryPage.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.cModel});
  final Categorymodel cModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Categorypage(category: cModel.categoryName.toLowerCase(),);
      })),
      child: Container(
        margin: EdgeInsets.only(right: 8),
        height: 130,
        width: 170,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: AssetImage(cModel.categoryimg),
                fit: BoxFit.fill,
                height: 120,
                width: 180,
              ),
            ),
            Text(
              cModel.categoryName,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
