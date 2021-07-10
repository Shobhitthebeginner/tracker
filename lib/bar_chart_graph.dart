import 'package:charts_flutter/flutter.dart' as charts;
import 'bar_chart_model.dart';
List<charts.Series<BarChartModel, String>> series = [
  charts.Series(
      id: "Financial",

      domainFn: (BarChartModel series, _) => series.year,
      measureFn: (BarChartModel series, _) => series.financial,
      colorFn: (BarChartModel series, _) => series.color),
];

return _buildFinancialList(series);

}