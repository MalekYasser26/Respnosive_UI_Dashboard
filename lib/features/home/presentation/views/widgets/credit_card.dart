import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_responsive_ui/utils/app_images.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class CreditCard extends StatelessWidget {
  final int cardNum ;
  const CreditCard({
    super.key, required this.cardNum,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Card $cardNum",style: AppStyles.styleSemiBold16(context),),
        const SizedBox(height: 5,),
        AspectRatio(
          aspectRatio: 1.9,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF4EB7F2),
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(image: AssetImage(Assets.imageMaskGroup),fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text("Name Card",style: AppStyles.styleMedium14(context)),
                  subtitle: Text("Malek Yasser",style: AppStyles.styleSemiBoldWhite16(context)),
                  trailing: SvgPicture.asset(Assets.imagePlaceHolder),
                ),
                 const Spacer(),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("0918 8124 0042 8129",style: AppStyles.styleSemiBoldWhite16(context),),
                          const SizedBox(height: 5,),
                          Text("12/20 - 124",style: AppStyles.styleMedium14(context),),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ) ,
          ),
        ),
      ],
    );
  }
}
