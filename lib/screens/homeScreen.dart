import 'package:appplusidea/data/constants.dart';
import 'package:appplusidea/screens/coursePage.dart';
import 'package:appplusidea/widget/Hero_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var url = Uri.https('bored-api.appbewery.com', '/random');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = convert.jsonDecode(response.body);
      print('DATA:${jsonRes}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          GestureDetector(
              onTap: () => {
                    print('PRESS'),
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Coursepage(),
                        ))
                  },
              child: const HeroWidget(title: 'Welcome')),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
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
