import 'package:flutter/material.dart';
import 'package:ticket_hunt/utils/app_styles.dart';

class ViewAll extends StatelessWidget {
  final String text;
  final String linkText;

  const ViewAll({required this.text, required this.linkText, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.headLineStyleTwo,
        ),
        InkWell(
          onTap: () {
            print("Viewing All");
          },
          child: Text(
            linkText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
