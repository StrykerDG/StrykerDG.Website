import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:strykerdg_webclient/widgets/stats/rounded_barchart.dart';

class Statistics extends StatelessWidget {
  static final data = [
      RepoData('StrykerDG.Discord.StrykerBot', 15, charts.MaterialPalette.black),
      RepoData('StrykerDG.FarmForge', 18, charts.MaterialPalette.blue.shadeDefault),
      RepoData('StrykerDG.Apis.StrykerApi', 7, charts.MaterialPalette.gray.shadeDefault)
  ];

  final List<charts.Series<RepoData, String>> repoData = [
    charts.Series<RepoData, String>(
      id: 'Repo Data',
      colorFn: (RepoData data, _) => data.color,
      domainFn: (RepoData data, _) => data.repo,
      measureFn: (RepoData data, _) => data.quantity,
      data: data
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RoundedBarChart(
            data: repoData,
            height: 400,
            width: 300,
            title: 'Repo Data',
          ),
          RoundedBarChart(
            data: repoData,
            height: 400,
            width: 300,
            title: 'Twitch Data',
          ),
          RoundedBarChart(
            data: repoData,
            height: 400,
            width: 300,
            title: 'Game Data',
          ),
        ],
      ),
    );
  }
}

class RepoData {
  final int quantity;
  final String repo;
  final charts.Color color;

  RepoData(this.repo, this.quantity, this.color);
}