import 'package:catering6/components/package_card.dart';
import 'package:catering6/models/Package.dart';
import 'package:catering6/screens/details/details_package.dart';
import 'package:flutter/material.dart';
import 'section_title_package.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitlePackage(
            title: "Special for you",
            press: () {},
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoPackage.take(2).length,
                (index) {
                  if (demoPackage[index].isPopular) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: PackageCard(
                        package: demoPackage[index],
                        onPress: () => Navigator.pushNamed(
                          context,
                          DetailsPackage.routeName,
                          arguments: PackageDetailsArguments(
                              package: demoPackage[index]),
                        ),
                      ),
                    );
                  }
                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
