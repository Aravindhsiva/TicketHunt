import 'package:flutter/material.dart';

import 'package:ticket_hunt/utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs(
      {required this.firstTab, required this.secondTab, super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(children: [
          /* Train Tickets */
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50))),
            ),
            child: Center(child: Text(firstTab)),
          ),
          /* Hotels */
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50))),
            ),
            child: Center(child: Text(secondTab)),
          )
        ]),
      ),
    );
  }
}
