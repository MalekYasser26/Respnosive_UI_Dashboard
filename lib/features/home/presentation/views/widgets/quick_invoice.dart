import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/user_info_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_bg_container.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/latest_transaction.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/quick_invoice_header.dart';
import 'package:full_responsive_ui/utils/app_images.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({Key? key}) : super(key: key);
  static const List<UserInfoModel> userInfoModel = [
    UserInfoModel(
        title: "malekyasser10@gmail.com",
        subtitles: "zzzzzzzzzzzzzzz",
        image: Assets.imagesPlaceholder1),
    UserInfoModel(
        title: "malekyasser10@gmail.com",
        subtitles: "aaaaaaaaaaaaaaaa",
        image: Assets.imagesPlaceholder2),
    UserInfoModel(
        title: "malekyasser10@gmail.com",
        subtitles: "sssssssssssssss",
        image: Assets.imagesPlaceholder1),
  ];

  @override
  Widget build(BuildContext context) {
    return CustBGContainter(
        childWidget: Column(
      children: [
        const QuickInvoiceHeader(),
        const LatestTransaction(userInfoModel: userInfoModel),
        const Divider(
          height: 48,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Customer name",
                    style: AppStyles.styleSemiBold16(context),
                  ),
                 const IntrinsicWidth(
                    child:  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: "Type Customer name",

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Customer Email",
                    style: AppStyles.styleSemiBold16(context),
                  ),
                 Container(
                   width: 200,
                   child: const TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),
                       hintText: "Type Customer Email",

                     ),
                   ),
                 ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
