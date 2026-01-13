import 'package:appplusidea/data/notifiers.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatefulWidget {
  NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedpage, child) {
          return NavigationBar(
            selectedIndex: selectedpage,
            onDestinationSelected: (value) {
              selectedPageNotifier.value = value;
            },
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.person_3_outlined), label: 'Profile'),
            ],
          );
        });
  }
}
