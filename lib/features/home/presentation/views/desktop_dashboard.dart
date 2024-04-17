import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_drawer.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/middle_section.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/right_section.dart';

class DesktopDashboardView extends StatefulWidget {
  const DesktopDashboardView({super.key});

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
            flex: 2200,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1300,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: MiddleSection(),
                          ),
                        ),
                        Expanded(
                          flex: 900,
                          child: RightSection(),
                        ),
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
