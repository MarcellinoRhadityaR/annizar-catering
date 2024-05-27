import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Package.dart';

class PackageImages extends StatefulWidget {
  const PackageImages({
    super.key,
    required this.package,
  });

  final Package package;

  @override
  _PackageImagesState createState() => _PackageImagesState();
}

class _PackageImagesState extends State<PackageImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.package.images[selectedImage]),
          ),
        ),
        // SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.package.images.length,
              (index) => SmallPackageImage(
                isSelected: index == selectedImage,
                press: () {
                  setState(() {
                    selectedImage = index;
                  });
                },
                image: widget.package.images[index],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class SmallPackageImage extends StatefulWidget {
  const SmallPackageImage(
      {super.key,
      required this.isSelected,
      required this.press,
      required this.image});

  final bool isSelected;
  final VoidCallback press;
  final String image;

  @override
  State<SmallPackageImage> createState() => _SmallPackageImageState();
}

class _SmallPackageImageState extends State<SmallPackageImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(8),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(widget.isSelected ? 1 : 0)),
        ),
        child: Image.asset(widget.image),
      ),
    );
  }
}
