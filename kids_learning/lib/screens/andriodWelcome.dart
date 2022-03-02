import 'package:flutter/material.dart';
import 'package:kids_learning/screens/andriodCategoriesScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        left: true,
        right: true,
        child: Scaffold(
          backgroundColor: const Color(0xFF000000),
          body: SafeArea(
            child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color(0xFFF1F1F1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Kids',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                        Text('Lingo',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: const [
                        Text('Gujarati Learning',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1),
                        Text('for kids',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    width: double.maxFinite,
                    height: 300,
                    decoration: const BoxDecoration(),
                    child: Image.network(
                      'https://cdn.shopify.com/s/files/1/0594/9951/1983/files/kisspng-cartoon-child-children-s-books-5aea23739e4c62.3390462515252939396484-removebg-preview.png?v=1640763346',
                      width: double.maxFinite,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('The easy way to learn Gujarati',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 1),
                      Text(' with your child',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AndCategoriesScreen.routeName);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.black,
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                          vertical: 20,
                        ))),
                    label: const Icon(Icons.chevron_right_rounded),
                    icon: const Text("Start learning"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
