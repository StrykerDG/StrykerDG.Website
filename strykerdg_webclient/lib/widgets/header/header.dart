import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/widgets/header/header_button.dart';

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
              Expanded(child: Container()),
              HeaderButton(
                label: 'Projects',
                onPressed: () { print('Pressed'); },
              ),
              HeaderButton(
                label: 'Blogs',
                onPressed: () { print('Pressed'); },
              ),
              HeaderButton(
                label: 'Videos',
                onPressed: () { print('Pressed'); },
              ),
              Expanded(child: Container()),
              HeaderButton(
                label: 'About',
                onPressed: () { print('Pressed'); },
              ),
              HeaderButton(
                label: 'Community',
                onPressed: () { print('Pressed'); },
              ),
              HeaderButton(
                label: 'Store',
                onPressed: () { print('Pressed'); },
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}