
import 'package:flutter/material.dart';
import 'package:catering6/screens/details/components/package_description.dart';
import 'package:catering6/screens/details/components/package_images.dart';
import 'package:catering6/screens/details/components/top_rounded_container.dart';
import '../../models/Package.dart';
import 'package:catering6/screens/details/details_package2.dart';
// import '../cart/cart_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:catering6/models/Package.dart';
import 'package:catering6/screens/details/components/package_description.dart';
import 'package:catering6/screens/details/components/package_images.dart';
import 'package:catering6/screens/details/details_package2.dart';
import 'package:flutter/material.dart';
import 'package:catering6/screens/cart/cart_screen.dart';
import 'components/top_rounded_container.dart';

class DetailsPackage extends StatelessWidget {
  static String routeName = "/details_package";

  const DetailsPackage({super.key});

  @override
  Widget build(BuildContext context) {
    final PackageDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as PackageDetailsArguments;
    final package = args.package;
    final Uri whatsApp = Uri.parse('https://wa.link/rhri4q');
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
              onPressed: (() async {
                launchUrl(whatsApp);
              }),
              child: const Text("Chat Seller"),
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
