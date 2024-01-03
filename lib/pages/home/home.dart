import 'package:flutter/material.dart';
import 'package:sports_streaming/pages/home/widgets/slider.dart';

import 'widgets/man_city_list.dart';
import 'widgets/more_steam.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 0,
          titleSpacing: 0,
          centerTitle: false,
          title: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good morning Mahdi',
                  style: TextStyle(
                    color: Color(0xFF2D2C2C),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  'Welcome back',
                  style: TextStyle(
                    color: Color(0xFF5F5F5F),
                    fontSize: 14,
                    fontFamily: 'Clash Grotesk',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child:
                      Image.asset('assets/mahdi.jpg', width: 40, height: 40)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            tabBar(),
            const SizedBox(height: 30),
            const SliderTranding(),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 12),
              child: Text(
                'Premier League - 12PM EST',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF5F5F5F),
                  fontSize: 12,
                  fontFamily: 'Clash Grotesk',
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.41,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 3),
              child: Text(
                'Man city vs Liverpool fc',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2D2C2C),
                  fontSize: 16,
                  fontFamily: 'Clash Grotesk',
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.41,
                ),
              ),
            ),
            const ManCityListWidgets(),
            const MoreSteam(),
            const SizedBox(height: 120),
          ]),
        ));
  }

  Widget tabBar() {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      padding: const EdgeInsets.only(right: 0, left: 5),
      labelPadding: const EdgeInsets.only(right: 3),
      onTap: (index) {
        setState(() {
          selectIndex = index;
        });
      },
      indicatorPadding: const EdgeInsets.only(left: 0),
      controller: tabController,
      tabs: const [
        Tab(
          iconMargin: EdgeInsets.zero,
          child: Text(
            "Featured",
            style: TextStyle(fontSize: 12),
          ),
        ),
        SizedBox(
          width: 90,
          height: 50,
          child: Tab(
            iconMargin: EdgeInsets.zero,
            child: Text(
              "Live",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
        Tab(
          iconMargin: EdgeInsets.zero,
          child: Text(
            "Upcoming",
            style: TextStyle(fontSize: 12),
          ),
        ),
        Tab(
          iconMargin: EdgeInsets.zero,
          child: Text(
            "Library",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
