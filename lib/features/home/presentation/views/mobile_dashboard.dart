import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/middle_section.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/right_section.dart';

class MobileDashboardView extends StatelessWidget {
  const MobileDashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MiddleSection(),
          SizedBox(height: 20,),
          RightSection(),
        ],
      ),
    );
  }
}
