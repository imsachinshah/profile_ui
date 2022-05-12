import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:profile_ui/constraints.dart';
import 'package:profile_ui/screens/home/components/body.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: kPrimaryColor,
    leading: IconButton(
      padding: const EdgeInsets.only(left: 10),
      icon: SvgPicture.asset(
        "assets/icons/back-arrow.svg",
        height: 30,
        width: 30,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        padding: const EdgeInsets.only(right: 10),
        icon: SvgPicture.asset(
          "assets/icons/more-vert.svg",
          height: 30,
          width: 30,
        ),
        onPressed: () {},
      ),
    ],
  );
}
