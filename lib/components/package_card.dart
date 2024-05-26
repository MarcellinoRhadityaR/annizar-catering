import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../models/Package.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({
    super.key,
    this.width = 250,
    this.height = 150,
    this.aspectRetio = 4,
    required this.package,
    required this.onPress,
  });

  final double width, height, aspectRetio;
  final Package package;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 4,
              child: Container(

                // padding: const EdgeInsets.all(10),
                height: 150,
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                //
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    package.images[0],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              package.title,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         "\Rp.${package.price}",
          //         style: const TextStyle(
          //           fontSize: 14,
          //           fontWeight: FontWeight.w600,
          //           color: kPrimaryColor,
          //         ),
          //       ),
          //       InkWell(
          //         borderRadius: BorderRadius.circular(50),
          //         onTap: () {},
          //         child: Container(
          //           padding: const EdgeInsets.all(6),
          //           height: 24,
          //           width: 24,
          //           decoration: BoxDecoration(
          //             color: package.isFavourite
          //                 ? kPrimaryColor.withOpacity(0.15)
          //                 : kSecondaryColor.withOpacity(0.1),
          //             shape: BoxShape.circle,
          //           ),
          //           // child: SvgPicture.asset(
          //           //   "assets/icons/Heart Icon_2.svg",
          //           //   colorFilter: ColorFilter.mode(
          //           //       package.isFavourite
          //           //           ? const Color(0xFFFF4848)
          //           //           : const Color(0xFFDBDEE4),
          //           //       BlendMode.srcIn),
          //           // ),
          //         ),
          //       ),
          //     ],
          //   )
          ],
        ),
      ),
    );
  }
}
