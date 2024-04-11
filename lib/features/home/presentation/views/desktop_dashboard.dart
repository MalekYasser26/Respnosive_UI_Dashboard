import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/all_expenses.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cards_transaction_section.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_bg_container.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_drawer.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/income_header.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/income_section.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/quick_invoice.dart';

class DesktopDashboardView extends StatefulWidget {
  const DesktopDashboardView({Key? key}) : super(key: key);

  @override
  State<DesktopDashboardView> createState() => _DesktopDashboardViewState();
}

class _DesktopDashboardViewState extends State<DesktopDashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf7f9fa),
      body: Row(
        children: [
          Expanded(
              flex: 556,
              child: Container(
                color: Colors.white,
                child: const CustDrawer(),
              )),
          const Expanded(
            flex: 1300,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AllExpenses(),
                    SizedBox(
                      height: 10,
                    ),
                    QuickInvoice(),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 900,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CardsTransactionSection(),
                  SizedBox(
                    height: 10,
                  ),
                  CustBGContainter(
                      childWidget: Column(
                    children: [
                      Column(
                        children: [
                          IncomeHeader(),
                          IncomeSection(),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

