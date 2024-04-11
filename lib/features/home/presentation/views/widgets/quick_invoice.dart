import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/user_info_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_bg_container.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/latest_transaction.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/quick_invoice_form.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/quick_invoice_header.dart';
import 'package:full_responsive_ui/utils/app_images.dart';

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
    return const CustBGContainter(
        childWidget: Column(
      children: [
         QuickInvoiceHeader(),
         LatestTransaction(userInfoModel: userInfoModel),
         Divider(
          height: 10,
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}

