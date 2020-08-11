import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/utilities/constants.dart';

class BaseBody extends StatelessWidget {
  const BaseBody({@required this.bodyContent});

  final List<Widget> bodyContent;

  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight,
      child: Column(
        children: [
          SizedBox(
            height: kHeaderHeight,
          ),
          Container(
            height: deviceHeight - kHeaderHeight,
            child: SingleChildScrollView(
              child: Column(
                children: bodyContent,
              ),
            ),
          )
        ],
      ),
    );
  }
}