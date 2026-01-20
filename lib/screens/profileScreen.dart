import 'package:appplusidea/data/notifiers.dart';
import 'package:appplusidea/screens/welcomeScreen.dart';
import 'package:appplusidea/widget/Hero_widget.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          ListTile(
            hoverColor: Colors.red,
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Welcomescreen(),
              ));
            },
            title: const Text('Logout'),
          )
        ],
      ),
    ));
  }
}
