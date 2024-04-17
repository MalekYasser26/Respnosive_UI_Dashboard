import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/desktop_dashboard.dart';
import 'package:full_responsive_ui/features/home/presentation/views/mobile_dashboard.dart';
import 'package:full_responsive_ui/features/home/presentation/views/tablet_dashboard.dart';
import 'package:full_responsive_ui/utils/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth<=SizeConfig.mobile){
        print("mobile");
        return const MobileDashboardView();
      } else if(constraints.maxWidth<=SizeConfig.tablet){
        print("tablet");
        return const TabletDashboardView();
      } else {
        print("desktop");

        return const DesktopDashboardView();
      }
    },);
  }
}
