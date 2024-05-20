import 'package:flutter/material.dart';
import 'package:flutter_addweb_task/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';

class TimeLineWidget extends StatefulWidget {
  const TimeLineWidget({super.key});
  @override
  State<TimeLineWidget> createState() => _TimeLineWidgetState();
}

class _TimeLineWidgetState extends State<TimeLineWidget> {
  var selectedDate;

  DateTime startDate = DateTime(2021, 01, 01);
  late List<DateTime> datelist =
      List.generate(30, (index) => startDate.add(Duration(days: index)));
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "January, 23 2021",
                      style: GoogleFonts.roboto(color: fontColor, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Today",
                      style: GoogleFonts.roboto(
                          color: fontColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 30,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: const Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Icon(
                              Icons.arrow_drop_down,
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                "TIMELINE",
                                style: GoogleFonts.roboto(
                                    color: fontColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset("icons/Group 911.svg"),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "JAN, 2021",
                        style: GoogleFonts.roboto(
                            color: fontColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: datelist.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedDate = datelist[index].day;
                      });
                    },
                    child: SizedBox(
                      height: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              DateFormat.E()
                                  .format(datelist[index])
                                  .toUpperCase(),
                              style: GoogleFonts.roboto(
                                color: selectedDate == datelist[index].day
                                    ? card3bgclr
                                    : card3bgclr.withAlpha(70),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 8,
                          ),
                          Text("${datelist[index].day}",
                              style: GoogleFonts.roboto(
                                  color: selectedDate == datelist[index].day
                                      ? card3bgclr
                                      : fontColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(
                            height: 4,
                          ),
                          Visibility(
                              visible: selectedDate == datelist[index].day
                                  ? true
                                  : false,
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: card3bgclr),
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              })),
        )
      ],
    );
  }
}
