import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/transaction_item_model.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  final TransactionItemModels timModel;

  const TransactionItem({Key? key, required this.timModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xFFFAFAFA),
      ),
      child: ListTile(
        title: Text(timModel.text,style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(timModel.subtext,style: AppStyles.styleRegular14(context)),
        trailing: Text(timModel.amount,
            style: timModel.isProfit
                ? AppStyles.styleMedium14(context)
                    .copyWith(color: const Color(0xFFF3735E))
                : AppStyles.styleMedium14(context)
                    .copyWith(color: const Color(0xFF7DD97B))),
      ),
    );
  }
}
