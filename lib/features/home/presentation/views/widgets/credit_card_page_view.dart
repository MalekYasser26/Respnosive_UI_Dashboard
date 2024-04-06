import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/credit_card.dart';

class CreditCardPageView extends StatelessWidget {
  final PageController pvController ;
  const CreditCardPageView({Key? key, required this.pvController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pvController,
        children: List.generate(3, (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CreditCard(cardNum: index+1),
        )));
  }
}
