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
          body: Stack(children: [
            SafeArea(
              left: true,
              top: false,
              right: true,
              bottom: false,
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Color(0xFFF1F1F1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      padding: EdgeInsets.zero,
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
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: const [
                        Text('The easy way to learn Gujarati',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                        Text(' with you child',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 14,
                        right: 14,
                      ),
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Color(0xFF000000),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                        ),
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(AndriodCategoriesScreen.routeName);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent,
                          ),
                        ),
                        label: const Icon(Icons.chevron_right_rounded),
                        icon: const Text("Start learning"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
