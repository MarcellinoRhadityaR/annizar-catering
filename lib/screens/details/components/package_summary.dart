import 'package:catering6/constants.dart';
import 'package:catering6/models/Package.dart';
import 'package:flutter/material.dart';

class PackageSummary extends StatelessWidget {
  const PackageSummary({
    super.key,
    required this.package,
  });

  final Package package;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
children: [
        // const SizedBox(height: 8),
        Text(
          "\Rp.${package.price}",
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}