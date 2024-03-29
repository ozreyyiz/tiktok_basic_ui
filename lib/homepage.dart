import 'package:flutter/material.dart';
import 'package:tiktokbasic/pages/home.dart';
import 'package:tiktokbasic/pages/inbox.dart';
import 'package:tiktokbasic/pages/plus.dart';
import 'package:tiktokbasic/pages/profile.dart';
import 'package:tiktokbasic/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    UserHomePage(),
    UserSearchPage(),
    UserPlusPage(),
    UserInboxPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_rounded), label: "Inbox"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
      body: _pages[_selectedIndex],
    );
  }
}
