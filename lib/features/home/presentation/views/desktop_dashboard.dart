import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_drawer.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/user_info_list_tile.dart';
import 'package:full_responsive_ui/utils/app_images.dart';

class DesktopDashboardView extends StatelessWidget {
  const DesktopDashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
              child: CustDrawer()),
          Expanded(
              child: UserInfoListTile(
                image: Assets.imagesPlaceholder1,
            subtitle: "zzzzz@gmail.com",
            title: "Malek Yasser",
          )),
          Expanded(
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


