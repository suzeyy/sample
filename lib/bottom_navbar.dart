import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap: (index) {
    setState(() {
    _currentIndex = index;
    });
    },
    items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: SvgPicture.asset(
    'assets/home.svg',
    color: _currentIndex == 0 ? Colors.pink : Colors.grey,
    ),
    label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: SvgPicture.asset(
    'assets/search.svg',
    color: _currentIndex == 1 ? Colors.pink : Colors.grey,
    ),
    label: 'Search',
    ),
    BottomNavigationBarItem(
    icon: SvgPicture.asset(
    'assets/memo1.svg',
    color: _currentIndex == 2 ? Colors.pink : Colors.grey,
    ),
    label: 'Booking',
    ),
    BottomNavigationBarItem(
    icon: SvgPicture.asset(
    'assets/profile.svg',
    color: _currentIndex == 3 ? Colors.pink : Colors.grey,
    ),
    label: 'Profile',
    ),
    ],
    selectedItemColor: Colors.pink,
    unselectedItemColor: Colors.grey,
    selectedLabelStyle: TextStyle(
    color: Colors.pink,
    fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    ),
    type: BottomNavigationBarType.fixed,
    );
  }
}
