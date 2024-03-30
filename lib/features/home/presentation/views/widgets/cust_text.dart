import 'package:flutter/material.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class CustText extends StatelessWidget {
  final String text ;
  const CustText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: AppStyles.styleSemiBold16(context),
          ),
           const SizedBox(height: 5,),
           SizedBox(
             height:50,
             child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: "Type $text",

              ),
          ),
           ),
        ],
      ),
    );
  }
}
