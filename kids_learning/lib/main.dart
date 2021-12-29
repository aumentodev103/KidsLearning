import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:kids_learning/Providers/ProviderCategories.dart';
import 'package:kids_learning/screens/andriodCategoriesScreen.dart';
import 'dart:io';

import 'package:kids_learning/screens/andriodWelcome.dart';
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
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blue,
            ).copyWith(
              secondary: Colors.green,
            ),
            fontFamily: "Opensans",
            primarySwatch: Colors.blue,
          ),
          home: const WelcomeScreen(),
          initialRoute: "/",
          routes: {
            AndriodCategoriesScreen.routeName: (_) => AndriodCategoriesScreen(),
          }),
    );
  }
}
