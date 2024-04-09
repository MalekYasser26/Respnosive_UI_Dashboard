import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/transaction_item_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/transaction_item.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);
  static const List<TransactionItemModels> timModels = [
    TransactionItemModels(
        text: "Cash Withdrawal",
        subtext: "13 Apr, 2022 ",
        amount: "\$20,129",
        false),
    TransactionItemModels(
        text: "Landing Page project",
        subtext: "13 Apr, 2022 at 3:30 PM",
        amount: "\$2029",
        true),
    TransactionItemModels(
        text: "Juni Mobile App project",
        subtext: "13 Apr, 2022 at 3:30 PM",
        amount: "\$20,129",
        true),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Text(
                "Transaction History",
                style: AppStyles.styleSemiBold16(context),
              ),
              const Spacer(),
              Text(
                "See all",
                style: AppStyles.styleRegular14(context)
                    .copyWith(color: const Color(0xFF4EB7F2)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text("26 Aug 2017", style: AppStyles.styleRegular14(context)),
        ),
        ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                TransactionItem(timModel: timModels[index]),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: timModels.length),
      ],
    );
  }
}
