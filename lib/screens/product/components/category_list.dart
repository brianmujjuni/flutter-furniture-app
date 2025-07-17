import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class Categorylist extends StatefulWidget {
  const Categorylist({super.key});

  @override
  State<Categorylist> createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int selectedIndex = 0;
  List categories = ["All", "Sofa", "Park bench", "Armchair"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 40,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: index == categories.length - 1 ? kDefaultPadding : 0,
                ),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                  color: index == selectedIndex
                      ? Colors.white.withOpacity(0.4)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
    );
  }
}
