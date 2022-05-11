import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sara_store/constants.dart';
import 'package:sara_store/screens/widgets/product_colors.dart';

class SingleItem extends StatefulWidget {
  const SingleItem({Key? key}) : super(key: key);

  @override
  _SingleItemState createState() => _SingleItemState();
}

class _SingleItemState extends State<SingleItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 19.0,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 26.0,
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
            ),
            child: Icon(
              IconlyLight.heart,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            // color: Colors.deepOrange,
            height: 300.0,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 45.0,
                      ),
                      child: Text(
                        '2020 Apple iPad Air 10.9\"',
                        style: appTextStyle(
                          FontWeight.w600,
                          28.0,
                          Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40.0,
                      ),
                      child: Text(
                        'Colors',
                        style: appTextStyle(
                          FontWeight.w700,
                          18.0,
                          Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40.0,
                        right: 30.0,
                      ),
                      child: Row(
                        children: [
                          ProductColors(
                            colorName: 'Sky Blue',
                            borderColorCode: Color(0xFFE3E3E3),
                            colorCode: Color(0xFF7485C1),
                          ),
                          SizedBox(
                            width: 9.0,
                          ),
                          ProductColors(
                            colorName: 'Rose Gold',
                            borderColorCode: Color(0xFF868686),
                            colorCode: Color(0xFFC9A19C),
                          ),
                          SizedBox(
                            width: 9.0,
                          ),
                          ProductColors(
                            colorName: 'Green',
                            borderColorCode: Color(0xFFE3E3E3),
                            colorCode: Color(0xFFA1C89B),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 45.0,
                      ),
                      child: Text(
                        'Get Apple TV+ free for a year',
                        style: appTextStyle(
                          FontWeight.w700,
                          18.0,
                          Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 45.0,
                      ),
                      child: Text(
                        'Availabe when you purchase any new iPhone, iPad',
                        style: appTextStyle(
                          FontWeight.w400,
                          14.0,
                          Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 52.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 45.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Full description',
                            style: appTextStyle(
                              FontWeight.w700,
                              16.0,
                              Color(0xFFFEA517),
                            ),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFFEA517),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 33.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 53.0,
                        right: 46.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: appTextStyle(
                              FontWeight.w400,
                              16.0,
                              Colors.black,
                            ),
                          ),
                          Text(
                            'Rs. 579',
                            style: appTextStyle(
                              FontWeight.w700,
                              22.0,
                              Color(0xFFFEA517),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          elevation: MaterialStateProperty.all<double>(0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 25.0,
                            bottom: 22.0,
                            left: 60.0,
                            right: 60.0,
                          ),
                          child: Text(
                            'Add to basket',
                            style: appTextStyle(
                              FontWeight.w700,
                              20.0,
                              Color(0xFFF6F6F9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
