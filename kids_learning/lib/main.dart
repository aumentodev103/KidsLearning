import 'package:flutter/material.dart';
import 'package:kids_learning/Providers/ProviderCategories.dart';
import 'package:kids_learning/screens/andriodCategoriesScreen.dart';
// import 'dart:io';

import 'package:kids_learning/screens/andriodWelcome.dart';
import 'package:kids_learning/screens/androidCategoryDetailsScreen.dart';
import 'package:provider/provider.dart';

void main() {
  // if (Platform.isAndroid) {
  runApp(const EntryPageAndriod());
  // }
}

class EntryPageAndriod extends StatelessWidget {
  const EntryPageAndriod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // value: Products(),
          create: (ctx) => CategoriesProvider(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Kids Learning',
          themeMode: ThemeMode.light,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blue,
            ).copyWith(
              secondary: Colors.green,
            ),
            textTheme: const TextTheme(
                headline1: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                headline4: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
            fontFamily: "Opensans",
            primarySwatch: Colors.blue,
          ),
          home: const WelcomeScreen(),
          initialRoute: "/",
          routes: {
            AndCategoriesScreen.routeName: (_) => const AndCategoriesScreen(),
            AndCategoryDetailsScreen.routeName: (_) =>
                const AndCategoryDetailsScreen(),
          }),
    );
  }
}
