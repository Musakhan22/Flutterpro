import 'package:flutter/material.dart';

class Settingsscreen extends StatefulWidget {
  const Settingsscreen({super.key});

  @override
  State<Settingsscreen> createState() => _SettingsscreenState();
}

class _SettingsscreenState extends State<Settingsscreen> {
  bool? ischecked = false;
  bool istrue = false;
  double sliderval = 0.0;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox.adaptive(
                value: ischecked,
                onChanged: (value) {
                  setState(() {
                    ischecked = value;
                  });
                },
              ),
              Switch.adaptive(
                value: istrue,
                onChanged: (value) {
                  setState(() {
                    istrue = value;
                  });
                },
              ),
              Slider(
                value: sliderval,
                onChanged: (value) {
                  setState(() {
                    sliderval = value;
                  });
                },
              ),
              Image.asset('./asset/bg-img.jpg')
            ],
          ),
        ));
  }
}
