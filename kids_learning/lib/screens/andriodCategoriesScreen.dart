import 'package:flutter/material.dart';
import 'package:kids_learning/Providers/ProviderCategories.dart';
import 'package:kids_learning/widgets/categoriesGridView.dart';
import 'package:kids_learning/widgets/categoryTile.dart';
import 'package:provider/provider.dart';

class AndriodCategoriesScreen extends StatelessWidget {
  static const routeName = "/all-categories";
  const AndriodCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
              color: Color(0xAAf1f1f1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Choose what",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "to learn today?",
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: const TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      letterSpacing: 1,
                      decoration: TextDecoration.none,
                    ),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: "Search...",
                        contentPadding: EdgeInsets.only(left: 20),
                        focusColor: Colors.black,
                        fillColor: Color.fromRGBO(211, 211, 211, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        )),
                  ),
                ),
                const CategoriesGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
