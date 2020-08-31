import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:universal_html/prefer_sdk/html.dart' as html;

class HandCursor extends MouseRegion {
  // app_container is the id of index.html <body>
  static final appContainer = html.window.document
    .getElementById('app_container');

  HandCursor({@required Widget child}) : super(
    onHover: (PointerHoverEvent event) {
      appContainer.style.cursor = 'pointer';
    },
    onExit: (PointerExitEvent event) {
      appContainer.style.cursor = 'default';
    },
    child: child
  );
}