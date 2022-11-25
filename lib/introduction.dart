import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'homepage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.08,
          ),
          Row(
            children: [
              SizedBox(
                width: Get.width * 0.32,
              ),
              Image.asset('assets/images/logos_netflix.png'),
              SizedBox(
                width: Get.width * 0.2,
              ),
              Image.asset('assets/images/bx_bxs-pencil.png')
            ],
          ),
          SizedBox(
            height: Get.height * 0.2,
          ),
          Row(
            children: [
              SizedBox(
                width: Get.width * 0.2,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(HomePage());
                  },
                  child: Image.asset('assets/images/Group 66.png')),
              SizedBox(
                width: Get.width * 0.1,
              ),
              Image.asset('assets/images/Group 67.png'),
            ],
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          Row(
            children: [
              SizedBox(
                width: Get.width * 0.2,
              ),
              Image.asset('assets/images/Group 69.png'),
              SizedBox(
                width: Get.width * 0.1,
              ),
              Image.asset('assets/images/Group 68.png')
            ],
          ),
          SizedBox(
            height: Get.height * 0.07,
          ),
          Row(
            children: [
              SizedBox(
                width: Get.width * 0.15,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            size: 70,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.08,
                      ),
                      Text(
                        'Add Profile',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
