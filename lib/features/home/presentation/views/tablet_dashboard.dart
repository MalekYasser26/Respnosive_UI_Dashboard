import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_drawer.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/middle_section.dart';

class TabletDashboardView extends StatelessWidget {
  const TabletDashboardView({super.key});

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
            ),
          ),
          const Expanded(flex: 2, child: MiddleSection()),
        ],
      ),
    );
  }
}
