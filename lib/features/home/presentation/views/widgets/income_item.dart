import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/income_item_model.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  final IncomeItemModel incomeModel;
  const IncomeItem({super.key, required this.incomeModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor:incomeModel.color,
          radius: 8,
        ),
        const SizedBox(width: 10,),
        Text(incomeModel.text,style: AppStyles.styleMediumBlue14(context),),
      ],
    );
  }
}
