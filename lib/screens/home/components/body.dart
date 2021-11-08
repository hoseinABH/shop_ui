import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/screens/home/components/categories.dart';
import 'package:shop_ui/screens/home/components/item_card.dart';
import 'package:shop_ui/screens/product/product_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              right: defaultPadding, left: defaultPadding, top: defaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                  childAspectRatio: 0.75),
              itemCount: products.length,
              itemBuilder: (ctx, index) {
                return ItemCard(
                  product: products[index],
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductScreen(product: products[index])));
                  },
                );
              }),
        ))
      ],
    );
  }
}
