import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sara_store/constants.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  _SearchResultsState createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 0.0,
                  right: 16.0,
                ),
                child: TextFormField(
                  style: appTextStyle(
                    FontWeight.w600,
                    17.0,
                    Colors.black,
                  ),
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
                        color: kSearchBarActiveColor,
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
    );
  }
}
