import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/all_expenses.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_drawer.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/quick_invoice.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/user_info_list_tile.dart';
import 'package:full_responsive_ui/utils/app_images.dart';

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
              child: Container(
            color: Colors.white,
            child: const CustDrawer(),
          )),
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  AllExpenses(),
                  QuickInvoice(),
                ],
              ),
            ),
          ),
          const Expanded(
              child: UserInfoListTile(
            image: Assets.imagesPlaceholder2,
            subtitle: "zzzzz@gmail.com",
            title: "Malek Yasser",
          )),
        ],
      ),
    );
  }
}
