import 'package:catering6/screens/details/components/package_summary.dart';
import 'package:flutter/material.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../constants.dart';
import '../../../models/Package.dart';

void updateQuantity(
    int delta, Package package, void Function(int) onQuantityChanged) {
  package.quantity += delta;
  onQuantityChanged(package.quantity);
}

class ColorDotsPackage extends StatelessWidget {
  const ColorDotsPackage({
    super.key,
    required this.package,
    required this.onQuantityChanged,
  });

  final Package package;
  final void Function(int) onQuantityChanged;

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    // int selectedColor = 3;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PackageSummary(package: package),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
    required this.package,
  });

  final Color color;
  final bool isSelected;
  final Package package;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
