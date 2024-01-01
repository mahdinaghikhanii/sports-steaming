import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';

const int homeIndex = 0;
const int cartIndex = 1;
const int profileIndex = 2;

class RootScrean extends StatefulWidget {
  const RootScrean({super.key});

  @override
  State<RootScrean> createState() => _RootScreanState();
}

class _RootScreanState extends State<RootScrean> {
  int selectedScreenIndex = homeIndex;
  final List<int> _history = [];

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _cartKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();

  late final map = {
    homeIndex: _homeKey,
    cartIndex: _cartKey,
    profileIndex: _profileKey,
  };

  Future<bool> _onWillPop() async {
    final NavigatorState currentSelectedTabNavigatorState =
        map[selectedScreenIndex]!.currentState!;
    if (currentSelectedTabNavigatorState.canPop()) {
      currentSelectedTabNavigatorState.pop();
      return false;
    } else if (_history.isNotEmpty) {
      setState(() {
        selectedScreenIndex = _history.last;
        _history.removeLast();
      });
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          extendBody: true,
          body: IndexedStack(
            index: selectedScreenIndex,
            children: [
              _navigator(_homeKey, homeIndex, const HomePages()),
              _navigator(_cartKey, cartIndex, const HomePages()),
              _navigator(_profileKey, profileIndex, const HomePages()),
              _navigator(_profileKey, profileIndex, const HomePages())
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Color(0xFF858586),
            unselectedLabelStyle: TextStyle(color: Color(0xFF858586)),
            selectedLabelStyle: TextStyle(color: Color(0xFF858586)),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            useLegacyColorScheme: true,
            fixedColor: Color(0xFF15AA3D),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.network_wifi), label: "Live"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books), label: "Library"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person), label: "Search"),
            ],
            currentIndex: selectedScreenIndex,
            onTap: (selectIndex) {
              setState(() {
                selectedScreenIndex = selectIndex;
              });
            },
          )),
    );
  }

  Widget _navigator(GlobalKey key, int index, Widget child) {
    return key.currentState == null && selectedScreenIndex != index
        ? Container()
        : Navigator(
            key: key,
            onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => Offstage(
                    offstage: selectedScreenIndex != index, child: child)));
  }
}
