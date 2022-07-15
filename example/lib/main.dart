import 'package:border_toggle_switch/border_toggle_switch.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ToggleView(),
    );
  }
}

class ToggleView extends StatefulWidget {
  const ToggleView({Key? key}) : super(key: key);

  @override
  State<ToggleView> createState() => _ToggleViewState();
}

class _ToggleViewState extends State<ToggleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: BorderToggleSwitch(
            bottomBorderColor: Colors.blue,
            activeToggleName: "Left",
            inActiveToggleName: "Right",
            isClicked: (value) {
              debugPrint(value);
            },
            isBorder: true,
            activeBackgroundColor: Colors.white,
            inActiveBackgroundColor: Colors.black12,
            height: 45,
            borderSize: 3,
            radius: 15,
            bottomRightRadius: 15,
            bottomLeftRadius: 15,
            topRightRadius: 15,
            topLeftRadius: 15,
            inActiveToggleNameStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
            activeToggleNameStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
