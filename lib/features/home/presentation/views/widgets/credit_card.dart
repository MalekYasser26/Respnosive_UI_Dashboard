import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_responsive_ui/utils/app_images.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF4EB7F2)),
            child: SvgPicture.asset(
              Assets.imagesCreditCard,
              fit: BoxFit.fitHeight,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name data",
                      style: AppStyles.styleMedium14(context)),
                  Text("Malek Yasser",
                      style: AppStyles.styleSemiBoldWhite16(context)),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: SvgPicture.asset(Assets.imagePlaceHolder)),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 120),
              child: Text("0918 8124 0042 8129",
                  style: AppStyles.styleSemiBoldWhite16(context)),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 170),
              child: Text("12/20 - 124",
                  style: AppStyles.styleMedium14(context)),
            ),
          ),
        ]);
  }
}
