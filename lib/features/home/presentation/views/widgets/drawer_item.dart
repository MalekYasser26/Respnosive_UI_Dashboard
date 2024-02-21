import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:full_responsive_ui/features/home/presentation/models/drawer_item_model.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModels dim;
  final bool isActive ;
  const DrawerItem({
    super.key, required this.dim, required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(dim: dim) : InactiveDrawerItem(dim: dim);
  }
}

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({
    super.key,
    required this.dim,
  });

  final DrawerItemModels dim;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(dim.text,style: AppStyles.styleMedium16(context)),
      leading:SvgPicture.asset(dim.imageName),

    );
  }
}
class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.dim,
  });

  final DrawerItemModels dim;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(dim.text,style: AppStyles.styleBold16(context)),
      leading:SvgPicture.asset(dim.imageName),
      trailing: Container(
        color: const Color(0xFF4EB7F2),
        width: 3.27,
      ),

    );
  }
}

