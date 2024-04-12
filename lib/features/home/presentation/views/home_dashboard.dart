import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/adaptive_layout.dart';

class HomeDashboardView extends StatelessWidget {
  const HomeDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AdaptiveLayoutWidget(),
    );
  }
}
