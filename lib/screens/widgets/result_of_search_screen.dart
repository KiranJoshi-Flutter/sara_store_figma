import 'package:flutter/material.dart';
import 'package:sara_store/constants.dart';

class ResultOfSearchScreen extends StatefulWidget {
  const ResultOfSearchScreen({Key? key}) : super(key: key);

  @override
  _ResultOfSearchScreenState createState() => _ResultOfSearchScreenState();
}

class _ResultOfSearchScreenState extends State<ResultOfSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
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
              height: 212.0,
              // width: 220.0,
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20.0,
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
                    'Rs. 359',
                    style: appTextStyle(
                      FontWeight.w600,
                      18.0,
                      Color(0xFFFEA517),
                    ),
                  ),
                  SizedBox(
                    height: 26.0,
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
              child: Image.asset('assets/images/home_screen/image.png'),
            ),
          ),
        ],
      ),
    );
  }
}
