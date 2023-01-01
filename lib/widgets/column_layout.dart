import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:ticket_hunt/utils/app_layout.dart';
import 'package:ticket_hunt/utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String title;
  final String text;
  final bool? isColor;
  final CrossAxisAlignment alignment;

  const ColumnLayout(
      {required this.title,
      required this.text,
      required this.alignment,
      this.isColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          text,
          style: Styles.headLineStyleThree
              .copyWith(color: isColor == null ? Colors.white : Colors.black),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          title,
          style: Styles.headLineStyleFour
              .copyWith(color: isColor == null ? Colors.white : Colors.grey),
        )
      ],
    );
  }
}
