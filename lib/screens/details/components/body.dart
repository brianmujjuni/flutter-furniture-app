import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/details/components/list_of_colors.dart';
import 'package:furniture_app/screens/details/components/product_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          // height: 200,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductPoster(
                  size: size,
                  image: "assets/images/Item_2.png",
                ),
              ),
              ListOfColors(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  "Poppy Platic Tub Chair",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Text(
                '\$56',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                ),
                child: Text(
                  "",
                  style: TextStyle(color: kTextLightColor),
                ),
              ),
              SizedBox(height: kDefaultPadding,)
            ],
          ),
        ),
      ],
    );
  }
}
