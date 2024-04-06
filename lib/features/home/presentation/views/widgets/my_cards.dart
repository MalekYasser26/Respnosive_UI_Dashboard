import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/credit_card_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  final PageController pvController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CreditCardPageView(
          pvController: pvController,
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: SmoothPageIndicator(
            controller: pvController,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: Color(0xFF4EB7F2),
              dotHeight: 10,
              dotWidth: 10
            ),

          ),
        )
      ],
    );
  }
}
