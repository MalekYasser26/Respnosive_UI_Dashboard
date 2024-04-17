import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cards_transaction_section.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_bg_container.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/income_header.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/income_section.dart';

class RightSection extends StatelessWidget {
  const RightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardsTransactionSection(),
        SizedBox(
          height: 10,
        ),
        CustBGContainter(
            childWidget: Column(
              children: [
                Column(
                  children: [
                    IncomeHeader(),
                    IncomeSection(),
                  ],
                )
              ],
            ))
      ],
    );
  }
}
