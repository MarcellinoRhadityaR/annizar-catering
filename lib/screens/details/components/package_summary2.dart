import 'package:catering6/constants.dart';
import 'package:catering6/models/Package.dart';
import 'package:catering6/models/Product.dart';
import 'package:flutter/material.dart';

class PackageSummary2 extends StatelessWidget {
  const PackageSummary2({
    super.key,
    required this.product,
  });

  final Product product;

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
          "${formatRupiah(product.price.toString())}",
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
