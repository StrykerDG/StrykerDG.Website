import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/screens/base_screen/base_screen.dart';

import 'package:strykerdg_webclient/widgets/stats/statistics.dart';

class HomeScreen extends StatelessWidget {
  static const id = '/home';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      content: [
        Statistics()
      ],
    );
  }
}