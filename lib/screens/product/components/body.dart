import 'package:flutter/material.dart';
import 'package:furniture_app/components/search_box.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/product/components/category_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChange: (value) {},
        ),
        Categorylist(),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Expanded(
          child: Stack(
            children: [
              //our background
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ProductCard()
            ],
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          //THESE ARE THE BACKGROUND
          Container(
            height: 136,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: kBlueColor,
                boxShadow: [kDefaultShadow]),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 160,
              width: 200,
              child: Image.asset(
                "assets/images/Item_1.png",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
