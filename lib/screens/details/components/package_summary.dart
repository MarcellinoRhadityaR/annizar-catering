import 'package:catering6/constants.dart';
import 'package:catering6/models/Package.dart';
import 'package:flutter/material.dart';

class PackageSummary extends StatelessWidget {
  const PackageSummary({
    super.key,
    required this.package,
  });

  final Package package;
  String formatRupiah(String nominal) {
    return 'Rp. ${nominal.replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const SizedBox(height: 8),
        Text(
          "${formatRupiah(package.price.toString())}",
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
