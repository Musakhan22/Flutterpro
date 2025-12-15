import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 42, 38),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        drawer: const Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text('DRAW')),
              ListTile(
                title: Text('logout'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'Test app',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 4, 42, 38),
        ),
        bottomNavigationBar: NavigationBar(
          // selectedIndex: ,
          onDestinationSelected: (value) {
            if (value == 0) {
            } else {}
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.person_3_outlined), label: 'Profile'),
            NavigationDestination(
                icon: Icon(Icons.home_max_outlined), label: 'Home')
          ],
          backgroundColor: Colors.transparent,
        ),
        body: const Column(
          children: [],
        ),
      ),
    );
  }
}
