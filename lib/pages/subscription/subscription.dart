import 'package:flutter/material.dart';
import 'package:sports_streaming/pages/subscription/toggle_button.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  int _toggleValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            leadingWidth: 0,
            leading: Padding(
                padding: const EdgeInsets.only(left: 18),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back))),
            centerTitle: true,
            title: const Text("Subscription",
                style: TextStyle(
                  color: Color(0xFF2D2C2C),
                  fontSize: 17,
                  fontFamily: 'Clash Grotesk',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ))),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 28),
              child: Text(
                'Choose Subscription Plan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2D2C2C),
                  fontSize: 24,
                  fontFamily: 'Clash Grotesk',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            width: MediaQuery.sizeOf(context).width,
            child: const Text(
              'Get the best service with out subscription plans tailored to make streaming fun and live.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF5F5F5F),
                fontSize: 12,
                fontFamily: 'Clash Grotesk',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          AnimatedToggle(
            values: const ['Monthly', 'Annualy'],
            onToggleCallback: (value) {
              setState(() {
                _toggleValue = value;
              });
            },
            buttonColor: const Color(0xFF15AA3D),
            backgroundColor: Colors.white,
            textColor: const Color(0xFFFFFFFF),
          ),
          cart(context),
          cart(context),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            width: MediaQuery.sizeOf(context).width,
            height: 56,
            padding: const EdgeInsets.only(
              top: 16,
              left: 15,
              right: 21,
              bottom: 16,
            ),
            decoration: ShapeDecoration(
              color: Color(0xFF15AA3D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Start your 14 days free trial',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Clash Grotesk',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}

Widget cart(context) {
  return Container(
    margin: const EdgeInsets.only(left: 20, right: 20, top: 24),
    width: MediaQuery.sizeOf(context).width,
    height: 153,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0xFFBCBCBC)),
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    child: Stack(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("Standard Plan"),
            SizedBox(height: 8),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '1.99\$ ',
                    style: TextStyle(
                        color: Color(0xFF2D2C2C),
                        fontSize: 24,
                        fontFamily: 'Clash Grotesk',
                        fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: '/',
                    style: TextStyle(
                        color: Color(0xFF5F5F5F),
                        fontSize: 24,
                        fontFamily: 'Clash Grotesk',
                        fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: 'Month',
                    style: TextStyle(
                        color: Color(0xFF5F5F5F),
                        fontSize: 14,
                        fontFamily: 'Clash Grotesk',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Perfect for starters',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF15AA3D),
                fontSize: 14,
                fontFamily: 'Clash Grotesk',
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        Positioned(
            right: 0,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'You Get',
                style: TextStyle(
                  color: Color(0xFF2D2C2C),
                  fontSize: 12,
                  fontFamily: 'Clash Grotesk',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset("assets/Done.png"),
                  const SizedBox(width: 8),
                  const Text(
                    'Tens of thousands of episodes \nand movies',
                    style: TextStyle(
                        color: Color(0xFF2D2C2C),
                        fontSize: 12,
                        fontFamily: 'Clash Grotesk',
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.asset("assets/Done.png"),
                  const SizedBox(width: 8),
                  const Text(
                    'Download to watch later',
                    style: TextStyle(
                        color: Color(0xFF2D2C2C),
                        fontSize: 12,
                        fontFamily: 'Clash Grotesk',
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset("assets/Done.png"),
                  const SizedBox(width: 8),
                  const Text(
                    'No ads, just fun',
                    style: TextStyle(
                        color: Color(0xFF2D2C2C),
                        fontSize: 12,
                        fontFamily: 'Clash Grotesk',
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ]))
      ],
    ),
  );
}
