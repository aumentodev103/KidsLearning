import 'package:flutter/material.dart';
import 'package:kids_learning/Providers/ProviderCategories.dart';
import 'package:kids_learning/widgets/contentListTile.dart';

class ContentListView extends StatelessWidget {
  final List<Map<String, Object>> contentDetails;
  const ContentListView({Key? key, required this.contentDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.builder(
        itemCount: contentDetails.length,
        itemBuilder: (ctx, index) => ContentListTile(),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
  //     child: Column(
  //       children: [
  //         Container(
  //           margin: const EdgeInsets.only(bottom: 15),
  //           width: double.infinity,
  //           decoration: BoxDecoration(
  //             borderRadius: const BorderRadius.all(Radius.circular(25)),
  //             color: Colors.purple.shade500,
  //           ),
  //           child: ListTile(
  //             minVerticalPadding: 30,
  //             horizontalTitleGap: 10,
  //             title: const Text(
  //               "Practice letter A",
  //               softWrap: false,
  //               textAlign: TextAlign.start,
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 color: Colors.amber,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             trailing: Container(
  //               width: 50,
  //               height: 50,
  //               alignment: Alignment.center,
  //               decoration: BoxDecoration(
  //                   color: Colors.amber,
  //                   borderRadius: BorderRadius.circular(15)),
  //               child: const Icon(
  //                 Icons.chevron_right_outlined,
  //                 color: Colors.white,
  //               ),
  //             ),
  //           ),
  //         ),
  //         Container(
  //           margin: const EdgeInsets.only(bottom: 15),
  //           width: double.infinity,
  //           decoration: BoxDecoration(
  //             borderRadius: const BorderRadius.all(Radius.circular(25)),
  //             color: Colors.purple.shade500,
  //           ),
  //           child: ListTile(
  //             minVerticalPadding: 30,
  //             horizontalTitleGap: 10,
  //             title: const Text(
  //               "Practice letter A",
  //               softWrap: false,
  //               textAlign: TextAlign.start,
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 color: Colors.amber,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             trailing: Container(
  //               width: 50,
  //               height: 50,
  //               alignment: Alignment.center,
  //               decoration: BoxDecoration(
  //                   color: Colors.amber,
  //                   borderRadius: BorderRadius.circular(15)),
  //               child: const Icon(
  //                 Icons.chevron_right_outlined,
  //                 color: Colors.white,
  //               ),
  //             ),
  //           ),
  //         ),
  //         Container(
  //           width: double.infinity,
  //           margin: const EdgeInsets.only(bottom: 15),
  //           decoration: BoxDecoration(
  //             borderRadius: const BorderRadius.all(Radius.circular(25)),
  //             color: Colors.purple.shade500,
  //           ),
  //           child: ListTile(
  //             minVerticalPadding: 30,
  //             horizontalTitleGap: 10,
  //             title: const Text(
  //               "Practice letter A",
  //               softWrap: false,
  //               textAlign: TextAlign.start,
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 color: Colors.amber,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             trailing: Container(
  //               width: 50,
  //               height: 50,
  //               alignment: Alignment.center,
  //               decoration: BoxDecoration(
  //                   color: Colors.amber,
  //                   borderRadius: BorderRadius.circular(15)),
  //               child: const Icon(
  //                 Icons.chevron_right_outlined,
  //                 color: Colors.white,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

}
