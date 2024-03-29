import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/expenses_item_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/expenses_item_header.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class InactiveExpensesItem extends StatelessWidget {
  const InactiveExpensesItem({
    super.key,
    required this.active, required this.eimModel,
  });

  final ExpensesItemModels eimModel;

  final bool active ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFFF1F1F1)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpensesItemHeader(
                active: active,
                image: eimModel.image,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(eimModel.type, style: AppStyles.styleSemiBold16(context)),
              Text(eimModel.date, style: AppStyles.styleMediumBlue14(context)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text("\$${eimModel.money}",
                    style: AppStyles.styleSemiBoldBlue18(context)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
