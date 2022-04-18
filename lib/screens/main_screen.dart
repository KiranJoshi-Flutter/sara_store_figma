import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconly/iconly.dart';
import 'package:sara_store/constants.dart';
import 'check1.dart';
import 'check2.dart';
import 'check3.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedNavItem = 0;
  String title = 'Ghar Jagga';

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomeScreen(),
        Check1(),
        Check2(),
        Check3(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      _selectedNavItem = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      _selectedNavItem = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: ((value) {
          setState(() {
            _selectedNavItem = value;
          });
          print(title);
          bottomTapped(value);
        }),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.home,
              color: _selectedNavItem == 0
                  ? kBottomNavBarActivateColor
                  : kBottomNavBarNotActivateColor,
              size: 26,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.heart,
              color: _selectedNavItem == 1
                  ? kBottomNavBarActivateColor
                  : kBottomNavBarNotActivateColor,
              size: 26,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.profile,
              color: _selectedNavItem == 2
                  ? kBottomNavBarActivateColor
                  : kBottomNavBarNotActivateColor,
              size: 26,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.buy,
              color: _selectedNavItem == 3
                  ? kBottomNavBarActivateColor
                  : kBottomNavBarNotActivateColor,
              size: 26,
            ),
            label: 'Home',
          ),
        ],
        selectedItemColor: kBottomNavBarActivateColor,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
      ),
    );
  }
}
