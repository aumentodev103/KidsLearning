import 'package:flutter/material.dart';
import 'package:kids_learning/widgets/categoriesGridView.dart';

class AndCategoriesScreen extends StatelessWidget {
  static const routeName = "/all-categories";
  const AndCategoriesScreen({Key? key}) : super(key: key);

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
                        "Choose what to learn today?",
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
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
                            Radius.circular(25),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
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
