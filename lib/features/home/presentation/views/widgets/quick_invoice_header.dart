import 'package:flutter/material.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quick Invoice",style: AppStyles.styleSemiBold20(context),),
        const Spacer(),
        CircleAvatar(
          backgroundColor: const Color(0xFFFAFAFA),
          child: IconButton(
              onPressed: () {

              },
              icon: const Icon(Icons.add,color: Color(0xFF4EB7F2),)),
        )
      ],
    );
  }
}
