import 'package:appplusidea/screens/widget_tree.dart';
import 'package:appplusidea/widget/NavBar_widget.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        'HOME PAGE',
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
