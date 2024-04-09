import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/all_expenses.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_bg_container.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_drawer.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/my_cards.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/quick_invoice.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/transaction_history.dart';


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
                    SizedBox(height: 10,),
                    QuickInvoice(),
                  ],
                ),
              ),
            ),
          ),
           const Expanded(
            flex: 900,
              child: Column(
                children: [
                  CustBGContainter(
                    childWidget: SingleChildScrollView(
                      child: Column(
                      children: [
                          MyCards(),
                          Padding(
                            padding: EdgeInsets.all(9.0),
                            child:  Divider(
                              thickness: .5,
                            ),
                          ),
                          TransactionHistory(),
                      ],
            ),
                    ),
                  ),

                ],
              ),
          ),
         
        ],
      ),
    );
  }
}

