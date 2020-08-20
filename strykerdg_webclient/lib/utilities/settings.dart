import 'dart:html';

import 'package:strykerdg_webclient/services/stryker_api_service.dart';

class Settings {
  static String version = '1.0.0';
  static String title = 'StrykerDG.com';

  static setApiUrl() {
    String location = window.location.toString();
    if (location.contains('localhost'))
      StrykerApiService.apiUrl = 'https://localhost:44302';
  }
}
