import 'package:flutter/material.dart';
import 'package:food_app_ui/app/features/home/views/explore_screen.dart';
import 'package:food_app_ui/app/features/home/views/profile_screen.dart';
import 'package:food_app_ui/utils/app_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = const [
    ExploreScreen(),
    Center(child: Icon(Icons.favorite)),
    ProfileScreen(),
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
