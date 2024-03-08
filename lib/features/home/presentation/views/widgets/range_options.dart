import 'package:flutter/material.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFFF1F1F1))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMediumBlue14(context),
              ),
              IconButton(
                onPressed: () {},
                icon: Transform.rotate(
                  angle: 1.5708,
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF064061),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
