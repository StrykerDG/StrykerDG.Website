import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/widgets/header/header_button.dart';

import 'package:strykerdg_webclient/screens/not_found_screen/not_found_screen.dart';

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
                onPressed: () { Navigator.pushNamed(context, NotFoundScreen.id); },
              ),
              HeaderButton(
                label: 'Blogs',
                onPressed: () { Navigator.pushNamed(context, NotFoundScreen.id); },
              ),
              HeaderButton(
                label: 'Videos',
                onPressed: () { Navigator.pushNamed(context, NotFoundScreen.id); },
              ),
              Expanded(child: Container()),
              HeaderButton(
                label: 'About',
                onPressed: () { Navigator.pushNamed(context, NotFoundScreen.id); },
              ),
              HeaderButton(
                label: 'Community',
                onPressed: () { Navigator.pushNamed(context, NotFoundScreen.id); },
              ),
              HeaderButton(
                label: 'Store',
                onPressed: () { Navigator.pushNamed(context, NotFoundScreen.id); },
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}