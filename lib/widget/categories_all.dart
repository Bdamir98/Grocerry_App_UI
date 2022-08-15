import 'package:flutter/material.dart';
import 'package:grocerry/model/data.dart';

class CategoriesAll extends StatefulWidget {
  const CategoriesAll({Key? key}) : super(key: key);

  @override
  State<CategoriesAll> createState() => _CategoriesAllState();
}

class _CategoriesAllState extends State<CategoriesAll> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.categories.length,
        itemBuilder: (Context, index) {
          return Container(
            height: 90,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 90,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.teal[300],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      Categories.categories[index].categoryImage,
                      height: 70,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(Categories.categories[index].categoryName)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
