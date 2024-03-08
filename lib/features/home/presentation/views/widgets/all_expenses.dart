import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/all_expenses_header.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/expenses_item.dart';
import 'package:full_responsive_ui/utils/app_images.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child:  Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              AllExpensesHeader(),
              Row(
                children: [
                  Expanded(
                    child: ExpensesItem(
                      type: "Balance",
                      date: "March 2024",
                      money: "26800",
                      active: false,
                      image: Assets.imagesCash,
                    ),
                  ),
                  Expanded(
                    child: ExpensesItem(
                      type: "Income",
                      date: "March 2024",
                      money: "26800",
                      active: false,
                      image: Assets.imagesExpenses,
                    ),
                  ),
                  Expanded(
                    child: ExpensesItem(
                      type: "Expenses",
                      date: "March 2024",
                      money: "26800",
                      active: true,
                      image: Assets.imagesExpenses,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
