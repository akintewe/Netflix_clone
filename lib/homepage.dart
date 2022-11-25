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
                          ))),
                  Positioned(
                      top: 40,
                      child: Container(
                        child: Image.asset('assets/images/navbar.png'),
                      ))
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.06,
                child: Image.asset(
                  'assets/images/top10.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: Get.width * 0.02,
              ),
              Text(
                '#2 in Nigeria Today',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
