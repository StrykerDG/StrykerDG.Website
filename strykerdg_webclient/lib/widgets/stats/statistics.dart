import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:strykerdg_webclient/models/clockify/clockify_time_summary.dart';
import 'package:strykerdg_webclient/models/github/github_user.dart';
import 'package:strykerdg_webclient/models/statistics/statistics_model.dart';
import 'package:strykerdg_webclient/models/twitch/twitch_user.dart';

import 'package:strykerdg_webclient/widgets/stats/rounded_barchart.dart';

import 'package:strykerdg_webclient/services/stryker_api_service.dart';

class Statistics extends StatefulWidget {

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  List<charts.Series<StatisticsData, String>> githubData =
      new List<charts.Series<StatisticsData, String>>();
  List<charts.Series<StatisticsData, String>> twitchData =
      new List<charts.Series<StatisticsData, String>>();
  List<charts.Series<StatisticsData, String>> clockifyData = 
      new List<charts.Series<StatisticsData, String>>();

  void loadStatistics() async {
    try {
      // TODO: fetch data concurrently
      GitHubUser gitHubUser = await StrykerApiService.getGithubUser('strykerdg');
      TwitchUser twitchUser = await StrykerApiService.getTwitchUser('strykerdg');
      ClockifyTimeSummary timeSummary = await StrykerApiService.getClockifyTimeSummary();

      setState(() {
        githubData = generateGitHubData(gitHubUser);
        twitchData = generateTwitchData(twitchUser);
        clockifyData = generateClockifyData(timeSummary);
      });
    }
    catch(e) {
      print('Error! ${e.toString()}');
    }
  }

  List<charts.Series<StatisticsData, String>> generateGitHubData(GitHubUser user) {
    final List<StatisticsData> data = [
      StatisticsData(
        label: 'Repos',
        quantity: user.publicRepos,
        color: charts.MaterialPalette.black
      ),
      StatisticsData(
        label: 'Gists',
        quantity: user.publicGists,
        color: charts.MaterialPalette.blue.shadeDefault
      ),
      StatisticsData(
        label: 'Followers',
        quantity: user.followers,
        color: charts.MaterialPalette.gray.shadeDefault
      ),
      StatisticsData(
        label: 'Following',
        quantity: user.following,
        color: charts.MaterialPalette.cyan.shadeDefault
      )
    ];

    return [
      charts.Series<StatisticsData, String>(
        id: 'GitHubData',
        colorFn: (StatisticsData data, _) => data.color,
        domainFn: (StatisticsData data, _) => data.label,
        measureFn: (StatisticsData data, _) => data.quantity,
        data: data
      )
    ];
  }

  List<charts.Series<StatisticsData, String>> generateTwitchData(TwitchUser user) {
    final List<StatisticsData> data = [
      StatisticsData(
        label: 'Followers',
        quantity: user.followers.total,
        color: charts.MaterialPalette.black
      ),
      StatisticsData(
        label: 'Views',
        quantity: user.user.viewCount,
        color: charts.MaterialPalette.blue.shadeDefault
      ),
    ];

    return [
      charts.Series<StatisticsData, String>(
        id: 'TwitchData',
        colorFn: (StatisticsData data, _) => data.color,
        domainFn: (StatisticsData data, _) => data.label,
        measureFn: (StatisticsData data, _) => data.quantity,
        data: data
      )
    ];
  }

  List<charts.Series<StatisticsData, String>> generateClockifyData(ClockifyTimeSummary summary) {
    final List<StatisticsData> data = [
      StatisticsData(
        label: "Gaming",
        quantity: summary.gaming ~/ 60,
        color: charts.MaterialPalette.black
      ),
      StatisticsData(
        label: "Development",
        quantity: summary.development ~/ 60,
        color: charts.MaterialPalette.blue.shadeDefault
      ),
      StatisticsData(
        label: "Streaming",
        quantity: summary.streaming ~/ 60,
        color: charts.MaterialPalette.gray.shadeDefault
      ),
    ];

    return [
      charts.Series<StatisticsData, String>(
        id: 'ClockifyData',
        colorFn: (StatisticsData data, _) => data.color,
        domainFn: (StatisticsData data, _) => data.label,
        measureFn: (StatisticsData data, _) => data.quantity,
        data: data
      )
    ];
  }

  @override
  void initState() {
    super.initState();

    loadStatistics();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RoundedBarChart(
            data: githubData,
            height: 400,
            width: 300,
            title: 'GitHub',
          ),
          RoundedBarChart(
            data: twitchData,
            height: 400,
            width: 300,
            title: 'Twitch',
          ),
          RoundedBarChart(
            data: clockifyData,
            height: 400,
            width: 300,
            title: 'Clockify'
          )
        ],
      ),
    );
  }
}