import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/screens/product/components/add_to_cart.dart';
import 'package:shop_ui/screens/product/components/color_and_size.dart';
import 'package:shop_ui/screens/product/components/description.dart';
import 'package:shop_ui/screens/product/components/counter_with_fav.dart';
import 'package:shop_ui/screens/product/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: defaultPadding,
                      right: defaultPadding),
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      const CounterWithFav(),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
