import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/range_options.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Income",style: AppStyles.styleSemiBold18(context).copyWith(color: const Color(0xFF064061)),),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
