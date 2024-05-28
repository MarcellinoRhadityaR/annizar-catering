import 'package:flutter/material.dart';
import '../../../models/Package.dart';

class PackageDescription extends StatelessWidget {
  const PackageDescription({
    super.key,
    required this.package,
    //this.pressOnSeeMore,
  });

  final Package package;
  //final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            package.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            package.description,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
