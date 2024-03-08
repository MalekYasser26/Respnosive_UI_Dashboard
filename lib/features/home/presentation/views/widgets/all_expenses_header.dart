import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/range_options.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 6,
        ),
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold16(context),
        ),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}

