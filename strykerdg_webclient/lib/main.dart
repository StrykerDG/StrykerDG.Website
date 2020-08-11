import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;

import 'package:strykerdg_webclient/screens/home_screen/home_screen.dart';

// import 'package:strykerdg_webclient/widgets/header/header.dart';
// import 'package:strykerdg_webclient/widgets/header/header_image.dart';

import 'package:strykerdg_webclient/utilities/settings.dart';

void main() {
  runApp(StrykerDG());
}

class StrykerDG extends StatelessWidget {
  // static final data = [
  //     RepoData('StrykerDG.Discord.StrykerBot', 15, charts.MaterialPalette.black),
  //     RepoData('StrykerDG.FarmForge', 18, charts.MaterialPalette.blue.shadeDefault),
  //     RepoData('StrykerDG.Apis.StrykerApi', 7, charts.MaterialPalette.gray.shadeDefault)
  // ];

  // final List<charts.Series<RepoData, String>> repoData = [charts.Series<RepoData, String>(
  //   id: 'Repo Data',
  //   colorFn: (RepoData data, _) => data.color,
  //   domainFn: (RepoData data, _) => data.repo,
  //   measureFn: (RepoData data, _) => data.quantity,
  //   data: data
  // )];

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: Settings.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.id,      
      routes: {
        null: (context) => HomeScreen(),
        '/': (context) => HomeScreen()
      },
    );
  }
}

/*
class PageBody extends StatelessWidget {
  const PageBody({
    Key key,
    @required this.repoData,
  }) : super(key: key);

  final List<charts.Series<RepoData, String>> repoData;

  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight,
      child: Stack(
        children: [
          Header(),
          Container(
            height: deviceHeight,
            child: Column(
              children: [
                SizedBox(height: 60),
                Container(
                  height: deviceHeight - 60,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 300,
                          height: 500,
                          child: charts.BarChart(
                            repoData,
                            behaviors: [
                              charts.ChartTitle(
                                'Repo Activity',
                                titleStyleSpec: charts.TextStyleSpec(
                                  color: charts.MaterialPalette.white
                                ),
                                behaviorPosition: charts.BehaviorPosition.top
                              )
                            ],
                            animate: false,
                            domainAxis: charts.OrdinalAxisSpec(
                              renderSpec: charts.SmallTickRendererSpec(
                                labelStyle: charts.TextStyleSpec(
                                  color: charts.MaterialPalette.white
                                ),
                                labelRotation: 30
                              )
                            ),
                            primaryMeasureAxis: charts.NumericAxisSpec(
                              renderSpec: charts.SmallTickRendererSpec(
                                labelStyle: charts.TextStyleSpec(
                                  color: charts.MaterialPalette.white
                                )
                              )
                            ),
                            defaultRenderer: new charts.BarRendererConfig(
                              cornerStrategy: const charts.ConstCornerStrategy(20))
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: charts.BarChart(
                            repoData,
                            animate: false,
                            defaultRenderer: new charts.BarRendererConfig(
                              cornerStrategy: const charts.ConstCornerStrategy(20))
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: charts.BarChart(
                            repoData,
                            animate: false,
                            defaultRenderer: new charts.BarRendererConfig(
                              cornerStrategy: const charts.ConstCornerStrategy(20))
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 300,
                          height: 500,
                          child: charts.BarChart(
                            repoData,
                            behaviors: [
                              charts.ChartTitle(
                                'Repo Activity',
                                behaviorPosition: charts.BehaviorPosition.top
                              )
                            ],
                            animate: false,
                            domainAxis: charts.OrdinalAxisSpec(
                              renderSpec: charts.SmallTickRendererSpec(
                                labelRotation: 40
                              )
                            ),
                            defaultRenderer: new charts.BarRendererConfig(
                              cornerStrategy: const charts.ConstCornerStrategy(20))
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: charts.BarChart(
                            repoData,
                            animate: false,
                            defaultRenderer: new charts.BarRendererConfig(
                              cornerStrategy: const charts.ConstCornerStrategy(20))
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: charts.BarChart(
                            repoData,
                            animate: false,
                            defaultRenderer: new charts.BarRendererConfig(
                              cornerStrategy: const charts.ConstCornerStrategy(20))
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 300,
                          height: 500,
                          child: charts.BarChart(
                            repoData,
                            behaviors: [
                              charts.ChartTitle(
                                'Repo Activity',
                                behaviorPosition: charts.BehaviorPosition.top
                              )
                            ],
                            animate: false,
                            domainAxis: charts.OrdinalAxisSpec(
                              renderSpec: charts.SmallTickRendererSpec(
                                labelRotation: 40
                              )
                            ),
                            defaultRenderer: new charts.BarRendererConfig(
                              cornerStrategy: const charts.ConstCornerStrategy(20))
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: charts.BarChart(
                            repoData,
                            animate: false,
                            defaultRenderer: new charts.BarRendererConfig(
                              cornerStrategy: const charts.ConstCornerStrategy(20))
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: charts.BarChart(
                            repoData,
                            animate: false,
                            defaultRenderer: new charts.BarRendererConfig(
                              cornerStrategy: const charts.ConstCornerStrategy(20))
                          ),
                        )
                      ],
                    )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          HeaderImage(),
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
*/