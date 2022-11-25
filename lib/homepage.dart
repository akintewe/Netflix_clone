import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                      child: Container(
                          width: Get.width,
                          child: Image.asset(
                            'assets/images/movie.png',
                            fit: BoxFit.cover,
                          )))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
