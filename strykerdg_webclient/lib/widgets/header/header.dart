import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/utilities/constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Material(
      elevation: kHeaderElevation,
      child: Container(
        width: deviceWidth,
        height: kHeaderHeight,
        color: kPrimaryColor,
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(child: Text('First', style: TextStyle(color: kSecondaryColor))),
              Center(child: Text('Second', style: TextStyle(color: kSecondaryColor))),
              Expanded(child: Container()),
              Center(child: Text('Third', style: TextStyle(color: kSecondaryColor))),
              Center(child: Text('Fourth', style: TextStyle(color: kSecondaryColor)))
            ],
          ),
        ),
      ),
    );
  }
}