import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  final CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  CarouselDemo({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage('https://via.placeholder.com/400x200'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage('https://via.placeholder.com/400x200?text=Second'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        controller: buttonCarouselController,
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
      ElevatedButton(
        onPressed: () => buttonCarouselController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.linear,
        ),
        child: Text('→'),
      ),
    ],
  );
}

