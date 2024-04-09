import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_bg_container.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/my_cards.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/transaction_history.dart';

class CardsTransactionSection extends StatelessWidget {
  const CardsTransactionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustBGContainter(
      childWidget: SingleChildScrollView(
        child: Column(
          children: [
            MyCards(),
            Padding(
              padding: EdgeInsets.all(9.0),
              child: Divider(
                thickness: .5,
              ),
            ),
            TransactionHistory(),
          ],
        ),
      ),
    );

  }
}
