import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/screens/home_screen/home_screen.dart';

import 'package:strykerdg_webclient/utilities/constants.dart';
// import 'package:strykerdg_webclient/widgets/hand_cursor/hand_cursor.dart';

class HeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: kHeaderLogoWidth,
        child: Align(
          alignment: Alignment.topCenter,
          // child: HandCursor(
            child: GestureDetector(
              onTap: () { Navigator.pushNamed(context, HomeScreen.id); },
              child: Image.asset('assets/images/strykerdg_logo.png')
            ),
          // ),
        ),
      ),
    );
  }
}