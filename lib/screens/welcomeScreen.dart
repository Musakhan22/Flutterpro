import 'package:appplusidea/screens/widget_tree.dart';
import 'package:appplusidea/widget/Hero_widget.dart';
import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => WidgetTree(),
                  ));
                },
                child: Text('Get started'))
          ],
        ),
      ),
    );
  }
}
