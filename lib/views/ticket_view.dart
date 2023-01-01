import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ticket_hunt/utils/app_layout.dart';
import 'package:ticket_hunt/utils/app_styles.dart';
import 'package:ticket_hunt/widgets/column_layout.dart';
import 'package:ticket_hunt/widgets/dash_builder.dart';
import 'package:ticket_hunt/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({required this.ticket, this.isColor, super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /* Top Part of the ticket */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.ticketTopColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: Styles.headLineStyleThree.copyWith(
                          color: isColor == null ? Colors.white : Colors.black),
                    ),
                    const Spacer(),
                    ThickContainer(
                      isColor: isColor,
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Colors.grey.shade300),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.train_outlined,
                              color: isColor == null
                                  ? Colors.white
                                  : const Color(0xFF8ACCF7),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ThickContainer(
                      isColor: isColor,
                    ),
                    const Spacer(),
                    Text(
                      ticket['to']['code'],
                      style: Styles.headLineStyleThree.copyWith(
                          color: isColor == null ? Colors.white : Colors.black),
                    )
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['from']['name'],
                        style: Styles.headLineStyleFour.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.grey),
                      ),
                    ),
                    Text(
                      ticket['duration'],
                      style: Styles.headLineStyleFour.copyWith(
                          color: isColor == null ? Colors.white : Colors.black),
                    ),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['to']['name'],
                        style: Styles.headLineStyleFour.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.grey),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
              ]),
            ),
            /* Middle part of the ticket */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(children: [
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DashBuilder(
                      sections: 15,
                      isColor: isColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                  )),
                )
              ]),
            ),
            /* Bottom Part of the ticket */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      title: "Date",
                      text: ticket['date'],
                      alignment: CrossAxisAlignment.start,
                      isColor: isColor,
                    ),
                    ColumnLayout(
                      title: "Departure Time",
                      text: ticket['departure_time'],
                      alignment: CrossAxisAlignment.center,
                      isColor: isColor,
                    ),
                    ColumnLayout(
                      title: "Seat",
                      text: ticket['number'].toString(),
                      alignment: CrossAxisAlignment.end,
                      isColor: isColor,
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
