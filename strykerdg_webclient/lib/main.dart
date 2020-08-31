import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/router/router.dart';

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
      debugShowCheckedModeBanner: false,
      title: Settings.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.id,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
