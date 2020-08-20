import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/screens/home_screen/home_screen.dart';

import 'package:strykerdg_webclient/utilities/settings.dart';

void main() {
  Settings.setApiUrl();
  runApp(StrykerDG());
}

class StrykerDG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Settings.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        null: (context) => HomeScreen(), 
        '/': (context) => HomeScreen()
      },
    );
  }
}
