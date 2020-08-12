import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class RoundedBarChart extends StatelessWidget {
  RoundedBarChart({
    @required this.data,
    @required this.height,
    @required this.width,
    @required this.title
  });

  final List data;
  final double height;
  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: charts.BarChart(
        data,

        behaviors: [
          charts.ChartTitle(
            title,
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

        defaultRenderer: charts.BarRendererConfig(
          cornerStrategy: const charts.ConstCornerStrategy(20)
        ),
      ),
    );
  }
}