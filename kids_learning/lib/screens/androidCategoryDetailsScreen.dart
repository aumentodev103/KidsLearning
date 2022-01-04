import 'package:flutter/material.dart';
import 'package:kids_learning/Providers/ProviderCategories.dart';
import 'package:kids_learning/widgets/contentListView.dart';
import 'package:provider/provider.dart';

class AndCategoryDetailsScreen extends StatefulWidget {
  static const routeName = "/category-details/";
  const AndCategoryDetailsScreen();

  @override
  State<AndCategoryDetailsScreen> createState() =>
      _AndCategoryDetailsScreenState();
}

class _AndCategoryDetailsScreenState extends State<AndCategoryDetailsScreen> {
  var categoryId = null;
  late Category catDetails;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    categoryId = ModalRoute.of(context)!.settings.arguments;
    catDetails =
        Provider.of<CategoriesProvider>(context).categoryDetails(categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${catDetails.title} - (${catDetails.subTitle})",
                  style: Theme.of(context).textTheme.headline1,
                ),
                ContentListView(
                    contentDetails:
                        (catDetails.content) as List<Map<String, Object>>)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
