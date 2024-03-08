import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/drawer_item_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/drawer_item.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/drawer_options.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/user_info_list_tile.dart';
import 'package:full_responsive_ui/utils/app_images.dart';

class CustDrawer extends StatelessWidget {
  const CustDrawer({
    super.key,
  });

  static const List<DrawerItemModels> dimItems = [
    DrawerItemModels(text: "Dashboard", imageName: Assets.imagesDashboard),
    DrawerItemModels(
        text: "My Transaction", imageName: Assets.imagesMyTransaction),
    DrawerItemModels(text: "Statistics", imageName: Assets.imagesStatstics),
    DrawerItemModels(
        text: "Wallet account", imageName: Assets.imagesWalletAccounts),
    DrawerItemModels(
        text: "My Investments", imageName: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
         SliverToBoxAdapter(
           child: Padding(
             padding: EdgeInsets.all(15.0),
             child: UserInfoListTile(
              image: Assets.imagesPlaceholder1,
              subtitle: "zzzzz@gmail.com",
              title: "Malek Yasser",
        ),
           ),
         ),
         SliverToBoxAdapter(
           child: SizedBox(
            height: 20,
        ),
         ),
         DrawerOptions(
           dimItems: dimItems,
           count: 5,
         ),
         SliverFillRemaining(
           hasScrollBody: false,
           child: Column(
             children: [
               Expanded(child: SizedBox(
                 height: 20,
               )),
               InactiveDrawerItem(dim: DrawerItemModels(text: "Setting system", imageName: Assets.imagesSettings)),
               SizedBox(
                 height: 20,
               ),
               InactiveDrawerItem(dim: DrawerItemModels(text: "Logout", imageName: Assets.imagesLogout)),
               SizedBox(
                 height: 30,
               ),
             ],
           ),
         )

      ],
    );
  }
}
