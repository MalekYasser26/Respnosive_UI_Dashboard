import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/expenses_item_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/all_expenses_header.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_bg_container.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/expenses_item.dart';
import 'package:full_responsive_ui/utils/app_images.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({Key? key}) : super(key: key);

  @override
  _AllExpensesState createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  int selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static const List<ExpensesItemModels> eimItems = [
    ExpensesItemModels(
        type: "Balance",
        date: "March 2024",
        image: Assets.imagesCash,
        money: "26800"),
    ExpensesItemModels(
        type: "Income",
        date: "March 2024",
        image: Assets.imagesExpenses,
        money: "26800"),
    ExpensesItemModels(
        type: "Expenses",
        date: "March 2024",
        image: Assets.imagesExpenses,
        money: "26800"),
  ];

  @override
  Widget build(BuildContext context) {
    return CustBGContainter(
      childWidget: Column(
        children: [
          const AllExpensesHeader(),
          Row(
            children: eimItems.asMap().entries.map((e) {
              int index = e.key;
              var item = e.value;
              return Expanded(
                child: ExpensesItem(
                  eimModel: item,
                  active: selectedIndex == index,
                  index: index,
                  updateIndex: updateIndex,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
