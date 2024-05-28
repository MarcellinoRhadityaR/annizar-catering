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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PackageSummary(package: package),
          Row(
            // Tampilkan harga di sini
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RoundedIconBtn(
                icon: Icons.remove,
                press: () {
                  updateQuantity(-1, package, onQuantityChanged);
                },
              ),
              const SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: kPrimaryColor,
                child: Text(
                  package.quantity.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              RoundedIconBtn(
                icon: Icons.add,
                showShadow: true,
                press: () {
                  updateQuantity(1, package, onQuantityChanged);
                },
              ),
            ],
          ),
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
