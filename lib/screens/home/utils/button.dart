import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyButton extends StatelessWidget {
  final String name;
  const MyButton({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 5,
              spreadRadius: 0,
            ),
          ]),
      child: Center(
        child: SvgPicture.asset(
          'assets/icons/${name}.svg',
          fit: BoxFit.contain,
          // height: 40,
          // width: 40,
        ),
      ),
    );
  }
}
