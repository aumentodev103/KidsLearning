import 'package:flutter/material.dart';
import 'package:kids_learning/screens/andriodCategoriesScreen.dart';
import 'package:kids_learning/screens/androidCategoryDetailsScreen.dart';
import '../Providers/ProviderCategories.dart' show Category;

class CategoryTile extends StatelessWidget {
  final Category category;
  const CategoryTile({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white10),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 4,
                blurStyle: BlurStyle.outer,
              ),
            ],
            color: Colors.purple,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AndCategoryDetailsScreen.routeName,
                  arguments: category.id);
            },
            child: Column(
              children: [
                SizedBox(
                  child: Image.network(
                    category.image,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 25,
                  child: Text(
                    category.title,
                    softWrap: true,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: Text(
                    category.subTitle,
                    softWrap: true,
                    style: const TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
