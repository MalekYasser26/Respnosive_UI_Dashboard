import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/all_expenses.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/quick_invoice.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AllExpenses(),
        SizedBox(
          height: 10,
        ),
        QuickInvoice(),
      ],
    );
  }
}
