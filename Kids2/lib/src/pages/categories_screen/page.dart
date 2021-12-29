import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageCategoriesScreen extends StatefulWidget {
  const PageCategoriesScreen({
    Key? key,
    this.param1 = '0',
  }) : super(key: key);

  final String param1;

  @override
  _State createState() => _State();
}

class _State extends State<PageCategoriesScreen> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFFF1F1F1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                  ),
                  padding: const EdgeInsets.only(
                    left: 35,
                    right: 35,
                  ),
                  width: double.maxFinite,
                  decoration: const BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '''Choose what ''',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text('''to learn today?''',
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 1),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 25,
                        ),
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(),
                        child: Container(
                          margin: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                          ),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              hintText: "Search..",
                              contentPadding: const EdgeInsets.only(
                                left: 16,
                              ),
                            ),
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            minLines: 1,
                            maxLength: null,
                            obscureText: false,
                            showCursor: true,
                            autocorrect: false,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 25,
                        ),
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEAE8E8),
                        ),
                        child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            childAspectRatio: 1,
                          ),
                          shrinkWrap: true,
                          primary: true,
                          children: [
                            Container(
                              margin: EdgeInsets.zero,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFAE42),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    child: Image.network(
                                      '''https://cdn.shopify.com/s/files/1/0594/9951/1983/files/kisspng-cartoon-child-children-s-books-5aea23739e4c62.3390462515252939396484-removebg-preview.png?v=1640763346''',
                                      width: double.maxFinite,
                                      height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: const EdgeInsets.only(
                                      left: 25,
                                      bottom: 45,
                                    ),
                                    width: double.maxFinite,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('''Numbers''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            maxLines: 1),
                                        Text('''70 words''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            maxLines: 1),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.zero,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFAE42),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    child: Image.network(
                                      '''https://cdn.shopify.com/s/files/1/0594/9951/1983/files/kisspng-cartoon-child-children-s-books-5aea23739e4c62.3390462515252939396484-removebg-preview.png?v=1640763346''',
                                      width: double.maxFinite,
                                      height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: const EdgeInsets.only(
                                      left: 25,
                                      bottom: 45,
                                    ),
                                    width: double.maxFinite,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('''Numbers''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            maxLines: 1),
                                        Text('''70 words''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            maxLines: 1),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.zero,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFAE42),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    child: Image.network(
                                      '''https://cdn.shopify.com/s/files/1/0594/9951/1983/files/kisspng-cartoon-child-children-s-books-5aea23739e4c62.3390462515252939396484-removebg-preview.png?v=1640763346''',
                                      width: double.maxFinite,
                                      height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: const EdgeInsets.only(
                                      left: 25,
                                      bottom: 45,
                                    ),
                                    width: double.maxFinite,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('''Numbers''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            maxLines: 1),
                                        Text('''70 words''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            maxLines: 1),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.zero,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFAE42),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.zero,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFAE42),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.zero,
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFAE42),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
