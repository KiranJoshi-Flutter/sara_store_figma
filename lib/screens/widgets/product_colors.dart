import 'package:flutter/material.dart';
import 'package:sara_store/constants.dart';

class ProductColors extends StatelessWidget {
  final String colorName;
  final Color borderColorCode;
  final Color colorCode;

  const ProductColors({
    Key? key,
    required this.colorName,
    required this.borderColorCode,
    required this.colorCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 100.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColorCode,
        ),
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: colorCode,
            radius: 8.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            '$colorName',
            style: appTextStyle(
              FontWeight.w700,
              12.0,
              Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
