import 'package:appplusidea/screens/homeScreen.dart';
import 'package:appplusidea/screens/profileScreen.dart';
import 'package:appplusidea/widget/NavBar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [Homescreen(), Profilescreen()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FLUTTER UI',
        ),
        centerTitle: true,
      ),
      body: pages.elementAt(0),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
