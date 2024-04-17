import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/adaptive_layout.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_drawer.dart';
import 'package:full_responsive_ui/utils/size_config.dart';

class HomeDashboardView extends StatefulWidget {
  const HomeDashboardView({Key? key}) : super(key: key);

  @override
  State<HomeDashboardView> createState() => _HomeDashboardViewState();
}

class _HomeDashboardViewState extends State<HomeDashboardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      drawer: MediaQuery.of(context).size.width <= SizeConfig.mobile
          ? Container(
              color: const Color(0xFFFFFFFF),
              width: MediaQuery.of(context).size.width * 0.7,
              child: const CustDrawer(),
            )
          : null,
      appBar: MediaQuery.of(context).size.width <= SizeConfig.mobile
          ? AppBar(
              backgroundColor: const Color(0xFFFFFFFF),
              elevation: 0,
              scrolledUnderElevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      body: const AdaptiveLayoutWidget(),
    );
  }
}
