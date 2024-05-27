import 'package:flutter/material.dart';
//import 'package:catering6/screens/details/components/color_dots_package.dart';
import 'package:catering6/screens/details/components/package_description.dart';
import 'package:catering6/screens/details/components/package_images.dart';
import 'package:catering6/screens/details/components/top_rounded_container.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:catering6/screens/cart/cart_screen.dart';
import '../../models/Package.dart';
import 'package:catering6/screens/details/details_package2.dart';

class DetailsPackage extends StatelessWidget {
  static String routeName = "details_package";

  const DetailsPackage({super.key});

  @override
  Widget build(BuildContext context) {
    final PackageDetailsArguments args = ModalRoute.of(context)!.settings.arguments as PackageDetailsArguments;
    final package = args.package;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.zero,
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        // actions: [
        //   Row(
        //     children: [
        //       Container(
        //         margin: const EdgeInsets.only(right: 20),
        //         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(14),
        //         ),
        //         child: Row(
        //           children: [
        //             const Text(
        //               "4.7",
        //               style: TextStyle(
        //                 fontSize: 14,
        //                 color: Colors.black,
        //                 fontWeight: FontWeight.w600,
        //               ),
        //             ),
        //             const SizedBox(width: 4),
        //             SvgPicture.asset("assets/icons/Star Icon.svg"),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ],
      ),
      body: ListView(
        children: [
          PackageImages(package: package),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                PackageDescription(
                  package: package,
                  // pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      DetailsPackage2(package: package),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: TopRoundedContainer(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              child: const Text("Add To Cart"),
            ),
          ),
        ),
      ),
    );
  }
}

class PackageDetailsArguments {
  final Package package;

  PackageDetailsArguments({required this.package});
}
