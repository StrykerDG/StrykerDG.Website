import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:strykerdg_webclient/models/github/github_user.dart';
import 'package:strykerdg_webclient/models/twitch/twitch_user.dart';
import 'package:strykerdg_webclient/models/clockify/clockify_time_summary.dart';

class StrykerApiService {
  static String apiUrl;

  static dynamic request(String uri, dynamic body, String method) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    
    http.Response response;
    String jsonBody = body != null ? convert.jsonEncode(body) : null;

    try {
      switch (method) {
        case 'GET':
          response = await http.get('$apiUrl/$uri', headers: headers);
          break;

        case 'POST':
          response =
              await http.post('$apiUrl/$uri', headers: headers, body: jsonBody);
          break;

        case 'PATCH':
          response = await http.patch('$apiUrl/$uri',
              headers: headers, body: jsonBody);
          break;

        default:
          break;
      }
      return convert.jsonDecode(response.body);
    } catch (e) {
      return e;
    }
  }

  // GitHub
  static Future<GitHubUser> getGithubUser(String username) async {
    dynamic response = await request('GitHub/User/$username', null, 'GET');
    return GitHubUser.fromDynamic(response);
  }

  // Twitch
  static Future<TwitchUser> getTwitchUser(String username) async {
    dynamic response = await request('Twitch/User/$username', null, 'GET');
    return TwitchUser.fromDyamic(response);
  }

  // Clockify
  static Future<ClockifyTimeSummary> getClockifyTimeSummary() async {
    dynamic response = await request('Clockify/TimeEntries', null, 'GET');
    return ClockifyTimeSummary.fromDynamic(response);
  }
}
