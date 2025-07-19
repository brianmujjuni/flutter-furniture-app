import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/details/components/color_dots.dart';
class ListOfColors extends StatelessWidget {
  const ListOfColors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
           ColorDot(
            fillColor: Color(0xFFFF5200),
            isSelected: false,
          ),
           ColorDot(
            fillColor: kPrimaryColor,
            isSelected: false,
          )
        ],
      ),
    );
  }
}

