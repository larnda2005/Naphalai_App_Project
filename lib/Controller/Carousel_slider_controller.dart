import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_controller.dart';

class CarouselDemo extends StatelessWidget {
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      CarouselSlider(
        items: child,
        controller: buttonCarouselController,
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
      RaisedButton(
        onPressed:
            () => buttonCarouselController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            ),
        child: Text('→'),
      ),
    ],
  );
}
