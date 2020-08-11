import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/utilities/constants.dart';

class HeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: kHeaderLogoWidth,
        child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset('assets/images/strykerdg_logo.png'),
        ),
      ),
    );
  }
}