import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
    );
  }
}

AppBar buildAppbar() {
  return AppBar(
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
          color: cTextColor,
        ),
      ),
      const SizedBox(
        width: defaultPadding / 2,
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          color: cTextColor,
        ),
      ),
    ],
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
        color: cTextColor,
      ),
      onPressed: () {},
    ),
  );
}
