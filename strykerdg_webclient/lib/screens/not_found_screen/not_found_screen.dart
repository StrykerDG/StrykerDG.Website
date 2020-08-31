import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/screens/base_screen/base_screen.dart';

class NotFoundScreen extends StatelessWidget {
  static const id = '/404';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      content: [
        Text('404 Not Found')
      ],
    );
  }
}