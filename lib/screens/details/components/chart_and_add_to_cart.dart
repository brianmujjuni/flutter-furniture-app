import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
          color: Color(0xFFFCBF1E),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: 18,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFCBF1E), // Set background color
              foregroundColor: Colors.black, // Text/icon color
            ),
            icon: SvgPicture.asset(
              'assets/icons/shopping-bag.svg',
              height: 20,
              width: 20,
            ),
            label: Text("Add to cart"),
            onPressed: () {
              // Handle press
            },
          )
        ],
      ),
    );
  }
}
