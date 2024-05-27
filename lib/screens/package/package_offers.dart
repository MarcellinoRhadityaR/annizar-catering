import 'package:flutter/material.dart';
import 'package:catering6/components/package_card.dart';
import 'package:catering6/models/Package.dart';

import '../details/details_package.dart';

class PackageOffers extends StatelessWidget {
  const PackageOffers({super.key});

  static String routeName = "/package";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Package"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            itemCount: demoPackage.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.7,
              mainAxisSpacing: 20,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) => PackageCard(
              package: demoPackage[index],
              onPress: () => Navigator.pushNamed(
                context,
                DetailsPackage.routeName,
                arguments:
                    PackageDetailsArguments(package: demoPackage[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
