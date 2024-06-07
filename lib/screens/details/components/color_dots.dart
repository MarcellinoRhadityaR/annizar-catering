import 'package:catering6/screens/details/components/package_summary2.dart';
import 'package:flutter/material.dart';
import '../../../components/rounded_icon_btn.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';

void updateQuantity(
    int delta, Product product, void Function(int) onQuantityChanged) {
  product.quantity += delta;
  onQuantityChanged(product.quantity);
}

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
    required this.onQuantityChanged,
  }) : super(key: key);

  final Product product;
  final void Function(int) onQuantityChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PackageSummary2(product: product),
        ],
      ),
    );
  }
}

