import 'package:flutter/material.dart';
import 'package:routineapp/Screens/HomeScreen/main.dart';
import 'package:routineapp/Screens/NightScreen/main.dart';
import 'package:routineapp/Screens/ProfileScreen/main.dart';

class NavbarActivity extends StatefulWidget {
  static const routeName = "/NavbarActivity";
  const NavbarActivity({Key? key}) : super(key: key);

  @override
  State<NavbarActivity> createState() => _NavbarActivityState();
}

class _NavbarActivityState extends State<NavbarActivity> {
  int _currentIndex = 0;
  List screens = [
    const HomeScreen(),
    const NightScreen(),
    const ProfileScreen()
  ];

  String homepagebg = "assets/homepage/bg1.jpg";
  String nightpagebg = "assets/nightpage/bg.jpg";
  String defaultbg = "assets/homepage/bg1.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(defaultbg),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            maintainBottomViewPadding: true, child: screens[_currentIndex]),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
                backgroundColor: Color.fromARGB(255, 38, 37, 54),
                selectedItemColor: Colors.amber,
                showUnselectedLabels: false,
                unselectedItemColor: Colors.white,
                currentIndex: _currentIndex,
                onTap: (value) {
                  setState(() {
                    _currentIndex = value;
                    if (_currentIndex == 0) {
                      defaultbg = homepagebg;
                    } else if (_currentIndex == 1) {
                      defaultbg = nightpagebg;
                    } else {
                      defaultbg = homepagebg;
                    }
                  });
                },
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.house), label: "."),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.nightlight_round_outlined), label: "."),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: "."),
                ]),
          ),
        ),
      ),
    );
  }
}
