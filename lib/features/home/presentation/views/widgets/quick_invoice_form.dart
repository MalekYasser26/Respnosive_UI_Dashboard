import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_button.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/cust_text.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Row(
          children: [
            CustText(text: "Customer Name"),
            SizedBox(
              width: 20,
            ),
            CustText(text: "Customer Email"),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          children: [
            CustText(text: "Item Name"),
            SizedBox(
              width: 20,
            ),
            CustText(text: "Item Name"),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
              child: CustButton(
                text: "Add more details",
                color: Colors.white,
                textStyle: AppStyles.styleSemiBold16(context),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: CustButton(
              color: const Color(0xFF4EB7F2),
              text: "Send Money",
              textStyle: AppStyles.styleSemiBoldWhite16(context),
            )),
          ],
        )
      ],
    );
  }
}
