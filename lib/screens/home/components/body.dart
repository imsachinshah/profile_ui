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
            padding: const EdgeInsets.symmetric(horizontal: 50),
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
            width: size.width,
            decoration: const BoxDecoration(
                color: Color.fromARGB(221, 11, 10, 10),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Skill",
                        style: nTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          MyButton(
                            name: "flutter",
                          ),
                          MyButton(
                            name: "dart",
                          ),
                          MyButton(
                            name: "cpp",
                          ),
                          MyButton(
                            name: "java",
                          ),
                          MyButton(
                            name: "python",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Profession",
                        style: nTextStyle,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "3rd Year B.Tech Student",
                        style: TextStyle(
                            letterSpacing: 1.1,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.2,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
