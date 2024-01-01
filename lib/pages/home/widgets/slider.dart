import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderTranding extends StatelessWidget {
  const SliderTranding({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();
    return CarouselSlider.builder(
        carouselController: controller,
        itemCount: 1,
        options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.5,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {}),
        itemBuilder: (context, index, realIdx) {
          return Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/1s.png",
                fit: BoxFit.cover,
                width: MediaQuery.sizeOf(context).width,
                height: 150,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                width: 32,
                height: 18,
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: ShapeDecoration(
                  color: const Color(0xFFE08600),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Live',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]);
        });
  }
}
