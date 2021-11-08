import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  Product product;
  ProductTitleWithImage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Aristocratic Hand Bag',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(text: "Price"),
                TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ])),
              Expanded(
                  child: Hero(
                tag: product.id,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
