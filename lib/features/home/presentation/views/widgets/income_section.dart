import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/income_item_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/income_chart.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/income_items.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });
  static List <IncomeItemModel> incomeData = [
    IncomeItemModel(text: "Design service", value: 40, color: const Color(0xFF208CC8),),
    IncomeItemModel(text: "Design product", value: 25, color: const Color(0xFF4EB7F2),),
    IncomeItemModel(text: "Product royalty", value: 20, color: const Color(0xFF064061),),
    IncomeItemModel(text: "Other", value: 22, color: const Color(0xFFE2DECD),),
  ];
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          flex: 100,
          child: AspectRatio(
            aspectRatio: 1,
            child: IncomeChart(
              data: incomeData,
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          flex: 223,
          child: IncomeItems(data: incomeData,),
        ),
      ],
    );
  }
}
