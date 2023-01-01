import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:ticket_hunt/utils/app_layout.dart';
import 'package:ticket_hunt/utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final String text;
  final IconData icon;

  const AppIconText({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(12),
          horizontal: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          color: Colors.white),
      child: Row(children: [
        Icon(
          icon,
          color: const Color(0xFFBFC2DF),
        ),
        Gap(AppLayout.getWidth(10)),
        Text(text, style: Styles.textStyle),
      ]),
    );
  }
}
