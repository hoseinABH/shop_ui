import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/screens/product/components/body.dart';

class ColorAndSize extends StatelessWidget {
  Product product;
  ColorAndSize({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Color'),
            Row(
              children: const [
                ColorDot(
                  color: Color(0xFF356C95),
                  isSelected: true,
                ),
                ColorDot(color: Color(0xFFF8C078)),
                ColorDot(color: Color(0xFFA29B9B)),
              ],
            )
          ],
        )),
        Expanded(
            child: RichText(
                text: TextSpan(style: TextStyle(color: cTextColor), children: [
          TextSpan(text: "Size\n"),
          TextSpan(
              text: "${product.size} cm",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold))
        ])))
      ],
    );
  }
}
