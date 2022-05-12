import 'package:flutter/material.dart';
import 'package:profile_ui/constraints.dart';

import '../utils/button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle),
              child: const Image(
                image: AssetImage("assets/images/dp.png"),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Sachin Shah",
              style: titleStyle,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              "Flutter Developer",
              style: subTitleStyle,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MyButton(
                    name: "github",
                  ),
                  MyButton(
                    name: "linkedin",
                  ),
                  MyButton(
                    name: "twitter",
                  ),
                  MyButton(
                    name: "instagram",
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: size.height * 0.5,
            decoration: const BoxDecoration(
                color: Color.fromARGB(221, 11, 10, 10),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("Skill", style: TextStyle(
                    
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
