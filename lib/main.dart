import 'package:flutter/material.dart';
import 'package:to_do_cats/screens/home.dart';
import 'package:to_do_cats/screens/profile.dart';
import 'package:to_do_cats/screens/settings.dart';

import 'widgets/bottom_nav_bar.dart';
import 'widgets/container_color_gradient.dart';

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

  final List<Widget> _pages = [HomePage(), Profile(), Settings()];

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
        body: ContainerColorGradient(
            pages: _pages, selectedIndex: _selectedIndex),
        // BOTTOM NAV BAR
        bottomNavigationBar: BottomNavbar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
