import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_hunt/utils/app_layout.dart';
import 'package:ticket_hunt/utils/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelView({required this.hotel, super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(280),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(150),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLineStyleTwo.copyWith(color: Styles.goldColor),
          ),
          Text(
            hotel['destination'],
            style: Styles.headLineStyleThree.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "₹${hotel['price']}/night",
            style: Styles.headLineStyle.copyWith(color: Styles.goldColor),
          ),
        ],
      ),
    );
  }
}
