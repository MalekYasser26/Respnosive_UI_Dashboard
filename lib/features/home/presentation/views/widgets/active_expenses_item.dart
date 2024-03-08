import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/expenses_item_header.dart';
import 'package:full_responsive_ui/utils/app_images.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.type,
    required this.date,
    required this.money,
    required this.image, required this.active,
  });

  final String type;
  final String date;
  final String money;
  final String image;
  final bool active ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF4EB7F2)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               ExpensesItemHeader(
                image: image,
                 active: active,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(type, style: AppStyles.styleSemiBoldWhite16(context)),
              Text(date, style: AppStyles.styleMedium14(context)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child:
                Text("\$$money", style: AppStyles.styleSemiBold18(context)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
