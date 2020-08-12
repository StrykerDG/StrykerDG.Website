import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/utilities/constants.dart';

class HeaderButton extends StatelessWidget {
  HeaderButton({@required this.label, @required this.onPressed});

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        label,
        style: TextStyle(
          color: kSecondaryColor
        ),
      ),
      onPressed: onPressed,
    );
  }
}