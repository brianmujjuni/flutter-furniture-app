import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      centerTitle: false,
      title: Text(
        "Back".toUpperCase(),
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart_with_item.svg"),
        )
      ],
    );
  }
}
