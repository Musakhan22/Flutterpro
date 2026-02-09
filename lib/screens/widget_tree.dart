import 'package:appplusidea/data/constants.dart';
import 'package:appplusidea/data/notifiers.dart';
import 'package:appplusidea/screens/homeScreen.dart';
import 'package:appplusidea/screens/profileScreen.dart';
import 'package:appplusidea/screens/settingsScreen.dart';
import 'package:appplusidea/widget/NavBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [Homescreen(), Profilescreen()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pro',
          ),
          actions: [
            IconButton(
              onPressed: () async {
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
                final SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                preferences.setBool(
                    KConstants.ThemeKey, isDarkModeNotifier.value);
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
