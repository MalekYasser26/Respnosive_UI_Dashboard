import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/user_info_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/user_info_list_tile.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
    required this.userInfoModel,
  });

  final List<UserInfoModel> userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text("Latest transaction", style: AppStyles.styleRegular16(context)),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => IntrinsicWidth(
              child: UserInfoListTile(
                  title: userInfoModel[index].title,
                  subtitle: userInfoModel[index].subtitles,
                  image: userInfoModel[index].image),
            ),
          ),
        ),
      ],
    );
  }
}
