import 'package:appplusidea/screens/widget_tree.dart';
import 'package:appplusidea/widget/Hero_widget.dart';
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
        body: Padding(
      padding: EdgeInsets.all(28.0),
      child: Column(
        children: [HeroWidget()],
      ),
    ));
  }
}
