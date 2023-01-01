import 'package:flutter/material.dart';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';
import 'package:ticket_hunt/utils/app_layout.dart';
import 'package:ticket_hunt/utils/app_styles.dart';
import 'package:ticket_hunt/widgets/icon_text.dart';
import 'package:ticket_hunt/widgets/ticket_tabs.dart';
import 'package:ticket_hunt/widgets/view_all.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \n you looking for ?",
              style: Styles.headLineStyle
                  .copyWith(fontSize: AppLayout.getWidth(35))),
          Gap(AppLayout.getHeight(20)),
          const TicketTabs(firstTab: "Train Tickets", secondTab: "Hotel"),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.train_outlined, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.train_outlined, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18),
                horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                color: const Color(0xD91130CE)),
            child: Center(
              child: Text("Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const ViewAll(text: "Upcoming Trains", linkText: "View All"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.all(AppLayout.getHeight(12)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sit.jpg"),
                          ),
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Text(
                        "Flat 20% discount on using HDFC Credit Card. Don't miss out this chance",
                        style: Styles.headLineStyleTwo,
                      )
                    ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(180),
                        decoration: BoxDecoration(
                            color: const Color(0xDD3AB8BB),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount \nfor survey",
                                style: Styles.headLineStyleTwo.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                                "Take the survey about out services and get a discount",
                                style: Styles.headLineStyleTwo.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999)),
                              color: Colors.transparent,
                            ),
                          ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                    text: "😍", style: TextStyle(fontSize: 28)),
                                TextSpan(
                                    text: "🥰", style: TextStyle(fontSize: 45)),
                                TextSpan(
                                    text: "😘", style: TextStyle(fontSize: 28)),
                              ],
                            ),
                          ),
                          Gap(AppLayout.getHeight(35)),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Built with  ",
                                    style: Styles.headLineStyleTwo.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const WidgetSpan(
                                    child: Icon(
                                  FluentSystemIcons.ic_fluent_heart_filled,
                                  color: Colors.white,
                                )),
                                TextSpan(
                                    text: "from Chennai",
                                    style: Styles.headLineStyleTwo.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ),
                          Gap(AppLayout.getHeight(15)),
                        ]),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(5)),
        ],
      ),
    );
  }
}
