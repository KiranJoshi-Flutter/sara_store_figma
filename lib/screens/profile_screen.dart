import 'package:flutter/material.dart';
import 'package:sara_store/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 33.0,
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                top: 51.0,
              ),
              child: Text(
                'My profile',
                style: appTextStyle(
                  FontWeight.w700,
                  34.0,
                  Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 42.0,
                right: 30.0,
              ),
              child: Card(
                elevation: 0.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                      ),
                      Text(
                        'Rosina Doe',
                        style: appTextStyle(
                          FontWeight.w600,
                          18.0,
                          Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Address: 43 Oxford Road',
                              style: appTextStyle(
                                FontWeight.w400,
                                15.0,
                                Colors.black,
                              ),
                            ),
                            Text(
                              'M13 4GR',
                              style: appTextStyle(
                                FontWeight.w400,
                                15.0,
                                Colors.black,
                              ),
                            ),
                            Text(
                              'Manchester, UK',
                              style: appTextStyle(
                                FontWeight.w400,
                                15.0,
                                Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 17.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
