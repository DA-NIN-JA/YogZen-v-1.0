import 'package:flutter/material.dart';

import 'package:yogzen_v_1/components/nav_bar.dart';
import 'package:yogzen_v_1/screens/community/community_screen.dart';
import 'package:yogzen_v_1/screens/home/home.dart';

class NavScreen extends StatefulWidget {
  static const routeName = "/tabScreen";
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final _pages = [
    HomeScreen(),
    Scaffold(
      body: Center(
        child: Text("Specific Needs"),
      ),
    ),
    CommunityScreen(),
    Scaffold(
      body: Center(
        child: Text("User Profile"),
      ),
    ),
  ];

  var _selected = 0;

  void _changeScreen(val) {
    setState(() {
      _selected = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(idx: _selected, change: _changeScreen),
      body: _pages[_selected],
    );
  }
}
