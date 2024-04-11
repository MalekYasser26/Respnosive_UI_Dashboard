import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart extends StatelessWidget {
  final List data ;
  const IncomeChart({super.key, required this.data});
  PieChartData getChartData() {

    return PieChartData(sections: List.generate(data.length, (index) => PieChartSectionData(
        showTitle: false,
        color: data[index].color,
        value: data[index].value,
        title: data[index].text,
        radius: 15
    ),),);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Transform.rotate(
            angle: 3,
            child: PieChart(getChartData()),
          ),
        ),
      ],
    );
  }
}

