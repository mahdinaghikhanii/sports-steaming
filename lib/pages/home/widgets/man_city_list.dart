import 'package:flutter/material.dart';
import 'package:sports_streaming/pages/home/widgets/data.dart';

class ManCityListWidgets extends StatelessWidget {
  const ManCityListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 38),
      height: 70,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          padding: const EdgeInsets.only(left: 20),
          scrollDirection: Axis.horizontal,
          itemCount: listMenImage.length,
          itemBuilder: (context, idnex) {
            return Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 7),
                  width: 64.60,
                  height: 63.60,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(listMenImage[idnex]),
                      fit: BoxFit.cover,
                    ),
                    shape: const OvalBorder(
                      side: BorderSide(width: 2.50, color: Color(0xFFFBC400)),
                    ),
                  ),
                ),
                idnex == 1 || idnex == 2 || idnex == 0
                    ? Positioned(
                        bottom: 0,
                        right: 28,
                        child: Container(
                          width: 24,
                          height: 13.50,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4.50, vertical: 1.50),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE08600),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                          ),
                          child: const Text(
                            'Live',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7.50,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.31,
                            ),
                          ),
                        ))
                    : const SizedBox()
              ],
            );
          }),
    );
  }
}
