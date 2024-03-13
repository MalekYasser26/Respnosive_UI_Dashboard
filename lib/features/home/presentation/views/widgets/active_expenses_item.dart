import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/expenses_item_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/expenses_item_header.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.active, required this.eimModel,
  });

  final ExpensesItemModels eimModel ;
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
                image: eimModel.image,
                 active: active,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(eimModel.type, style: AppStyles.styleSemiBoldWhite16(context)),
              Text(eimModel.date, style: AppStyles.styleMedium14(context)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child:
                Text("\$${eimModel.money}", style: AppStyles.styleSemiBold18(context)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
