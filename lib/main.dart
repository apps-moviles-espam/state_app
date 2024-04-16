import 'package:flutter/material.dart';
//import 'screens/alert_screen.dart';
import 'screens/date_screen.dart';
//import 'screens/slider_screen.dart';
//import 'screens/switch_screen.dart';

void main() {
  runApp(const TabBarApp());
}

class TabBarApp extends StatelessWidget {
  const TabBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Stateless vs Stateful'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Date', icon: Icon(Icons.date_range)),
                Tab(text: 'Alert', icon: Icon(Icons.warning)),
                Tab(text: 'Switch', icon: Icon(Icons.touch_app)),
                Tab(text: 'Slider', icon: Icon(Icons.touch_app)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              DateScreen(),
              // AlertScreen(),
              // SwitchScreen(),
              // SliderScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
