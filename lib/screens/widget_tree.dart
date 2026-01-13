import 'package:appplusidea/data/notifiers.dart';
import 'package:appplusidea/screens/homeScreen.dart';
import 'package:appplusidea/screens/profileScreen.dart';
import 'package:appplusidea/screens/settingsScreen.dart';
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
          actions: [
            IconButton(
              onPressed: () {
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
              },
              icon: ValueListenableBuilder(
                valueListenable: isDarkModeNotifier,
                builder: (context, isdarkmode, child) =>
                    Icon(isdarkmode ? Icons.light_mode : Icons.dark_mode),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Settingsscreen(),
                  ));
                },
                icon: Icon(Icons.settings))
          ],
        ),
        body: ValueListenableBuilder(
            valueListenable: selectedPageNotifier,
            builder: (context, selectedpageindex, child) =>
                pages.elementAt(selectedpageindex)),
        bottomNavigationBar: NavbarWidget());
  }
}
