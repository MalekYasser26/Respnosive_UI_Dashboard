import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/adaptive_layout.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_drawer.dart';

class HomeDashboardView extends StatefulWidget {
  const HomeDashboardView({super.key});

  @override
  State<HomeDashboardView> createState() => _HomeDashboardViewState();
}

class _HomeDashboardViewState extends State<HomeDashboardView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      drawer: Container(
          color:const Color(0xFFFFFFFF) ,
          width: MediaQuery.of(context).size.width*0.7,
          child: const CustDrawer()),
      appBar: MediaQuery.of(context).size.width<=550 ? AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Builder(
          builder: (context) {
            return IconButton(onPressed: () {
                Scaffold.of(context).openDrawer();
            }, icon: const Icon(Icons.menu));
          }
        ),
      ): null,
      body: const AdaptiveLayoutWidget(),
    );
  }
}
