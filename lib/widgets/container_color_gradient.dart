import 'package:flutter/material.dart';

class ContainerColorGradient extends StatelessWidget {
  const ContainerColorGradient({
    super.key,
    required List<Widget> pages,
    required int selectedIndex,
  })  : _pages = pages,
        _selectedIndex = selectedIndex;

  final List<Widget> _pages;
  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.yellowAccent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: PageView(
        children: [
          _pages[_selectedIndex],
        ],
      ),
    );
  }
}
