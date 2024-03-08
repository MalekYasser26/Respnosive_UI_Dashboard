import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/active_expenses_item.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/inactive_expenses_item.dart';

class ExpensesItem extends StatefulWidget {
  final String type, date, money,image;
  bool active = false;

  ExpensesItem({
    super.key,
    required this.type,
    required this.date,
    required this.money,
    required this.active,
    required this.image
  });

  @override
  State<ExpensesItem> createState() => _ExpensesItemState();
}

class _ExpensesItemState extends State<ExpensesItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.active = !widget.active;
        print(widget.active);
        setState(() {
        });

      },
      child: widget.active == false
          ? InactiveExpensesItem(type: widget.type, date: widget.date, money: widget.money, image: widget.image,active: widget.active,)
          : ActiveExpensesItem(type: widget.type, date: widget.date, money: widget.money,image: widget.image,active: widget.active,)
    );
  }
}
