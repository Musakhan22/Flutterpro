import 'package:flutter/material.dart';

class NavbarWidget extends StatefulWidget {
  NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.person_3_outlined), label: 'Profile'),
      ],
    );
  }
}
