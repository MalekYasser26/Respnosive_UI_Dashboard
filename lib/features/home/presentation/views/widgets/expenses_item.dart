import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/expenses_item_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/active_expenses_item.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/inactive_expenses_item.dart';

class ExpensesItem extends StatelessWidget {
  final ExpensesItemModels eimModel;
  final bool active;
  final int index;
  final Function(int) updateIndex;

  const ExpensesItem({
    super.key,
    required this.eimModel,
    required this.active,
    required this.index,
    required this.updateIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        updateIndex(index);
      },
      child: active
          ? ActiveExpensesItem(active: true, eimModel: eimModel)
          : InactiveExpensesItem(active: false, eimModel: eimModel),
    );
  }
}
