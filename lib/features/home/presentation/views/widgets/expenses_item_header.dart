import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesItemHeader extends StatelessWidget {
  final String image ;
  final bool active ;
  const ExpensesItemHeader({
    super.key, required this.image,required this.active
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white.withOpacity(0.1),
          child: SvgPicture.asset(
            image,
            color: active ? Colors.white : const Color(0xFF4EB7F2),
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 18,
            ))
      ],
    );
  }
}
