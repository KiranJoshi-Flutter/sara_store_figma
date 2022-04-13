import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sara_store/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(
            left: 30.0,
            top: 10.0,
            bottom: 10.0,
          ),
          child: Image.asset(
            'assets/icons/align-left.png',
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 0.0,
                  right: 16.0,
                ),
                child: TextFormField(
                  scrollPadding: EdgeInsets.zero,
                  cursorColor: kLogoBlur,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color: Color(0xFFC9C9C9),
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color: Color(0xFFC9C9C9),
                        width: 2.0,
                      ),
                    ),
                    filled: true,
                    hintStyle: appTextStyle(
                      FontWeight.w600,
                      17.0,
                      Color(0xFF868686),
                    ),
                    hintText: "Search",
                    fillColor: Colors.white,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        child: Icon(
                          IconlyLight.search,
                          size: 24,
                          color: Colors.black,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
                top: 55.0,
              ),
              child: Text(
                'Order Online Collect in store',
                style: appTextStyle(
                  FontWeight.w700,
                  34,
                  Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 56.0,
                left: 54.0,
              ),
              child: Row(
                children: [
                  Text(
                    'Wearable',
                    style: appTextStyle(
                      FontWeight.w600,
                      17.0,
                      Color(0xFFFEA517),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 54.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 320.0,
                      // color: Colors.red,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Card(
                            elevation: 0.0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 270.0,
                              width: 220.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Text(
                                    'Apple Watch',
                                    style: appTextStyle(
                                      FontWeight.w600,
                                      22.0,
                                      Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 14.0,
                                  ),
                                  Text(
                                    'Series 6 . Red',
                                    style: appTextStyle(
                                      FontWeight.w600,
                                      16.0,
                                      Color(0xFF868686),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Text(
                                    'Rs. 359',
                                    style: appTextStyle(
                                      FontWeight.w600,
                                      16.0,
                                      Color(0xFFFEA517),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0.0,
                            child: CircleAvatar(
                              radius: 70.0,
                              backgroundColor: Colors.pink,
                              child: Image.asset(
                                  'assets/images/home_screen/image.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 34.0,
                    ),
                    Container(
                      height: 320.0,
                      // color: Colors.red,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Card(
                            elevation: 0.0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 270.0,
                              width: 220.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Text(
                                    'Apple Watch',
                                    style: appTextStyle(
                                      FontWeight.w600,
                                      22.0,
                                      Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 14.0,
                                  ),
                                  Text(
                                    'Series 6 . Red',
                                    style: appTextStyle(
                                      FontWeight.w600,
                                      16.0,
                                      Color(0xFF868686),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Text(
                                    'Rs. 359',
                                    style: appTextStyle(
                                      FontWeight.w600,
                                      16.0,
                                      Color(0xFFFEA517),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0.0,
                            child: CircleAvatar(
                              radius: 70.0,
                              backgroundColor: Colors.pink,
                              child: Image.asset(
                                  'assets/images/home_screen/image.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 34.0,
                    ),
                    Container(
                      height: 320.0,
                      // color: Colors.red,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Card(
                            elevation: 0.0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 270.0,
                              width: 220.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Text(
                                    'Apple Watch',
                                    style: appTextStyle(
                                      FontWeight.w600,
                                      22.0,
                                      Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 14.0,
                                  ),
                                  Text(
                                    'Series 6 . Red',
                                    style: appTextStyle(
                                      FontWeight.w600,
                                      16.0,
                                      Color(0xFF868686),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Text(
                                    'Rs. 359',
                                    style: appTextStyle(
                                      FontWeight.w600,
                                      16.0,
                                      Color(0xFFFEA517),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0.0,
                            child: CircleAvatar(
                              radius: 70.0,
                              backgroundColor: Colors.pink,
                              child: Image.asset(
                                  'assets/images/home_screen/image.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'see more',
                  style: appTextStyle(
                    FontWeight.w700,
                    16.0,
                    Color(0xFFFBA414),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Color(0xFFFBA414),
                ),
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
