import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/app_colors.dart';

class HomeScreen2 extends StatefulWidget {
  HomeScreen2({Key? key}) : super(key: key);

  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  int _currentIndex = 0;
  List<Widget> _screens = [
    Icon(Icons.home),
    Icon(Icons.favorite),
    Icon(Icons.person_2_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 26.0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: 30.0,
        selectedItemColor: AppColor.primaryColor,
        selectedLabelStyle: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
        selectedIconTheme: const IconThemeData(
          color: AppColor.secondaryColor,
        ),
        unselectedIconTheme: const IconThemeData(
          color: AppColor.secondaryColor,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '•',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: '•',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: '•',
          ),
        ],
      ),
    );
  }
}
