import 'package:flutter/material.dart';
import 'package:kids_learning/Providers/ProviderCategories.dart'
    show CategoriesProvider;
import 'package:kids_learning/widgets/categoryTile.dart';
import 'package:provider/provider.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriesData = Provider.of<CategoriesProvider>(context);
    final categories = categoriesData.categoriesList;
    return Container(
      height: 600,
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: (MediaQuery.of(context).size.width / 1.5) /
              (MediaQuery.of(context).size.height / 2),
        ),
        shrinkWrap: true,
        itemBuilder: (context, i) => CategoryTile(category: categories[i]),
      ),
    );
  }
}
