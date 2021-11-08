import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/Product.dart';

class AddToCart extends StatelessWidget {
  Product product;
  AddToCart({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: defaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: product.color)),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/add_to_cart.svg',
                color: product.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
              child: SizedBox(
            height: 50,
            child: FlatButton(
              color: product.color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              onPressed: () {},
              child: Text(
                "Buy Now".toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
