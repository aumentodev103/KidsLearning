import 'package:flutter/material.dart';
import '../Providers/ProviderCategories.dart' show Category;
import 'package:provider/provider.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  const CategoryTile({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              child: Image.network(
                category.image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(category.title),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(category.subTitle),
            ),
          ],
        ),
      ),
    );
  }
}
