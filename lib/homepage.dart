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
  int _selectedIndex = 0;
  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        elevation: 0,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,

        selectedIconTheme:
            IconThemeData(color: Color.fromRGBO(41, 179, 87, 1), size: 40),
        selectedItemColor: Color.fromRGBO(41, 179, 87, 1),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: IconThemeData(
          color: Color.fromRGBO(41, 179, 87, 1),
        ),
        unselectedItemColor: Color.fromRGBO(16, 66, 36, 1),
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromRGBO(16, 66, 36, 1)),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
              label: 'Profile')
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 35,
                        )),
                    Text(
                      'My List',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Container(
                    height: Get.height * 0.08,
                    width: Get.width * 0.38,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 20,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 60,
                                ))),
                        Positioned(
                            bottom: 15,
                            right: 20,
                            child: Text(
                              'Play',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    )),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.info_outline_rounded,
                          color: Colors.white,
                          size: 35,
                        )),
                    Text(
                      'Info',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Previews',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/thechi.jpeg'),
                    radius: 80,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/strangerthings.jpeg'),
                    radius: 80,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/The_queen.png'),
                    radius: 80,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/luca.png'),
                    radius: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
