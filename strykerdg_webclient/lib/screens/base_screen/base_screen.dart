import 'package:flutter/material.dart';

import 'package:strykerdg_webclient/widgets/header/header.dart';
import 'package:strykerdg_webclient/widgets/header/header_image.dart';
import 'package:strykerdg_webclient/widgets/base/base_body.dart';

import 'package:strykerdg_webclient/utilities/constants.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({@required this.content});

  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      extendBodyBehindAppBar: true,
      body: Container(
        height: deviceHeight,
        child: Stack(
          children: [
            Header(),
            BaseBody(
              bodyContent: content,
            ),
            HeaderImage()
          ],
        )
      ),
    );
  }
}