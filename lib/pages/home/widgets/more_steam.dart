import 'package:flutter/material.dart';

import 'data.dart';

class MoreSteam extends StatelessWidget {
  const MoreSteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
          padding: EdgeInsets.only(left: 20, bottom: 18),
          child: Text('More Live Streams',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Clash Grotesk',
                fontWeight: FontWeight.w500,
                height: 0.11,
                letterSpacing: -0.41,
              ))),
      SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 34,
        child: ListView.builder(
            padding: const EdgeInsets.only(left: 20),
            itemCount: moreLiveSteamTitle.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return index == 0
                  ? Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 32,
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 14),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF15AA3D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                      child: Text(moreLiveSteamTitle[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Clash Grotesk',
                            fontWeight: FontWeight.w500,
                            height: 0.11,
                          )))
                  : Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 32,
                      padding:
                          const EdgeInsets.only(left: 16, top: 14, right: 16),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF5F5F5F)),
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                      child: Text(
                        moreLiveSteamTitle[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF2D2C2C),
                          fontSize: 14,
                          fontFamily: 'Clash Grotesk',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                        ),
                      ));
            }),
      ),
      const SizedBox(height: 22),
      SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 180,
        child: ListView.builder(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            itemCount: listMoreLivesModel.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 224,
                      height: 126,
                      decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                listMoreLivesModel[index].imageAddres),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color:
                                  Colors.white.withOpacity(0.20000000298023224),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ))),
                  Text(
                    listMoreLivesModel[index].title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF5F5F5F),
                      fontSize: 11,
                      fontFamily: 'Clash Grotesk',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    'Man United vs Chelsea',
                    style: TextStyle(
                        color: Color(0xFF2D2C2C),
                        fontSize: 14,
                        fontFamily: 'Clash Grotesk',
                        fontWeight: FontWeight.w500,
                        height: 0),
                  )
                ],
              );
            }),
      )
    ]);
  }
}
