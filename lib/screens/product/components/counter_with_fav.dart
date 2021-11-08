import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/screens/product/components/cart_counter.dart';

class CounterWithFav extends StatelessWidget {
  const CounterWithFav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          child: SvgPicture.asset('assets/icons/heart.svg'),
          decoration: const BoxDecoration(
              color: Color(0xFFFF6464), shape: BoxShape.circle),
        )
      ],
    );
  }
}
