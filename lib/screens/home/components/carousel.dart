import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  static final List<String> imgList = [
    'assets/images/B1.png',
    'assets/images/B2.png',
    'assets/images/B1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            scrollDirection: Axis.horizontal,
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                      child:
                          Image.network(item, fit: BoxFit.cover, width: 1000),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
