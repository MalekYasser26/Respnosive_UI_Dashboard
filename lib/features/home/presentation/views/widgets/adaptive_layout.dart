import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/desktop_dashboard.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth<=550){
        print("mobile");
        return Placeholder();
      } else if(constraints.maxWidth<=900){
        print("tablet");
        return Placeholder();
      } else {
        print("desktop");
        return const DesktopDashboardView();
      }
    },);
  }
}
