import 'dart:js';

import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/router/path.dart';

import 'package:strykerdg_webclient/screens/home_screen/home_screen.dart';
import 'package:strykerdg_webclient/screens/not_found_screen/not_found_screen.dart';

class Router {

  static List<Path> paths = [
    Path(
      pattern: r'^' + HomeScreen.id,
      builder: (context, match) => HomeScreen()
    ),
    Path(
      pattern: r'^' + NotFoundScreen.id,
      builder: (context, match) => NotFoundScreen()
    )
  ];

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // If trying to navigate to root, go to the home page
    String updatedName = settings.name == '/'
      ? HomeScreen.id
      : settings.name;

    for(Path path in paths) {
      final regex = RegExp(path.pattern);
      if(regex.hasMatch(updatedName)) {
        final firstMatch = regex.firstMatch(updatedName);
        final match = firstMatch.groupCount == 1
          ? firstMatch.group(1)
          : null;
        return MaterialPageRoute<void>(
          builder: (context) => path.builder(context, match),
          settings: settings
        );
      }
    }

    // If no matches were found, return a 404
    return MaterialPageRoute<void>(
      builder: (context) => NotFoundScreen(),
      settings: settings
    );
  }
}