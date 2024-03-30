import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final String title,subtitle,image ;
  const UserInfoListTile({
    super.key, required this.title, required this.subtitle, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: Center(
        child: ListTile(
          leading:  SvgPicture.asset(image),
          title: Text(title , style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(subtitle,style: AppStyles.styleRegular12(context),overflow: TextOverflow.ellipsis,),
          style: ListTileStyle.drawer,
        ),
      ),
    );
  }
}
