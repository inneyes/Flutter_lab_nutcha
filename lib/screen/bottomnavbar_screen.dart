import 'package:flutter/material.dart';
import 'package:widget_basic/pages/user_page.dart';
import 'package:widget_basic/pages/page.dart';
import 'package:widget_basic/pages/search.dart';
import 'package:widget_basic/pages/shop.dart';
import 'package:widget_basic/pages/reels.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void navigatorBottomnavbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    GalleryPage(),
    ShopScreen(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: navigatorBottomnavbar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'REELS'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'SHOP'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'ACCOUNT'),
        ],
      ),
    );
  }
}
