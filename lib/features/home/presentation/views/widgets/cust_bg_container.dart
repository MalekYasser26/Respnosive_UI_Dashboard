import 'package:flutter/material.dart';

class CustBGContainter extends StatelessWidget {
  final Widget childWidget;

  const CustBGContainter({
    super.key,
    required this.childWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0 , vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: childWidget,
        ),
      ),
    );
  }
}
