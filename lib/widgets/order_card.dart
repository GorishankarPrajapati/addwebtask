import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_addweb_task/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({super.key});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 2,
      color: bgcolor,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New order created",
                  style: GoogleFonts.roboto(
                      color: fontColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "New Order created with Order",
                  style: GoogleFonts.roboto(color: fontColor, fontSize: 12),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "9:00 AM",
                  style: GoogleFonts.roboto(
                      color: newOrderCreatedColor, fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: newOrderCreatedColor,
                  size: 20,
                )
              ],
            ),
            SvgPicture.asset(
              "icons/Group 440.svg",
              height: 70,
              width: 70,
            ),
          ],
        ),
      ),
    );
  }
}
