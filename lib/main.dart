import 'package:flutter/material.dart';
import 'package:to_do_cats/screens/home.dart';
import 'package:to_do_cats/screens/profile.dart';
import 'package:to_do_cats/screens/settings.dart';

import 'widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const HomePage(), Profile(), Settings()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('To Do List'),
        ),
        body: PageView(
          children: [_pages[_selectedIndex]],
        ),
        // BOTTOM NAV BAR
        bottomNavigationBar: BottomNavbar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
