import 'package:appplusidea/data/constants.dart';
import 'package:appplusidea/widget/Hero_widget.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: [
          HeroWidget(title: 'Home'),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: const Card(
              color: Color.fromARGB(255, 14, 59, 81),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('The title', style: KTextstyle.titleTextStyle),
                    Text(
                      'the description',
                      style: KTextstyle.descriptionTextStyle,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
