import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/screens/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  color: products[0].color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(products[0].image),
            )
          ],
        )
      ],
    );
  }
}
