import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_addweb_task/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalSlider extends StatefulWidget {
  const HorizontalSlider({super.key});

  @override
  State<HorizontalSlider> createState() => _HorizontalSliderState();
}

class _HorizontalSliderState extends State<HorizontalSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      width: MediaQuery.of(context).size.width,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 230,
                  decoration: BoxDecoration(
                      color: card1bgclr,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        32.0,
                        16.0,
                        24.0,
                        16.0,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 253, 181, 205),
                              child: SvgPicture.asset(
                                  "icons/orders-illustration-image.svg"),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: ordrContainerColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Orders",
                                style: GoogleFonts.roboto(color: bgcolor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 80,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: ordrContainerColor,
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 8.0, 8.0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "You have ",
                                          style: GoogleFonts.roboto(
                                              color: bgcolor),
                                        ),
                                        Text(
                                          "3 ",
                                          style: GoogleFonts.roboto(
                                              color: bgcolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "active",
                                          style: GoogleFonts.roboto(
                                              color: bgcolor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "orders from",
                                    style: GoogleFonts.roboto(color: bgcolor),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: bgcolor,
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: Colors.red),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "icons/userImage.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: bgcolor,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.red),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                      "icons/userImage2.jpg",
                                                    ),
                                                    fit: BoxFit.cover))),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 60),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: bgcolor,
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: Colors.red),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      "icons/userImage.jpg"),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 80,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: bgcolor,
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 8.0, 8.0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "02 ",
                                          style: GoogleFonts.roboto(
                                              color: fontColor,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "Pending ",
                                          style: GoogleFonts.roboto(
                                              color: fontColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Orders from",
                                    style: GoogleFonts.roboto(
                                        color: fontColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: bgcolor,
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: Colors.red),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                  "icons/userImage2.jpg",
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: bgcolor,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.red),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                      "icons/userImage.jpg",
                                                    ),
                                                    fit: BoxFit.cover))),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 60),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: bgcolor,
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: Colors.red),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                    "icons/userImage2.jpg",
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 230,
                  decoration: BoxDecoration(
                      color: card2bgclr,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        32,
                        16.0,
                        24.0,
                        16.0,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 253, 181, 205),
                              child: SvgPicture.asset(
                                  "icons/subscriptions-illustration-image.svg"),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: subscriptionContainerColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Subscriptions",
                                style: GoogleFonts.roboto(color: bgcolor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 80,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: subscriptionContainerColor,
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: bgcolor,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "10 ",
                                                    style: GoogleFonts.roboto(
                                                        color: fontColor,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 20),
                                                  ),
                                                  Text(
                                                    "Active ",
                                                    style: GoogleFonts.roboto(
                                                        color: fontColor,
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "Subscriptions",
                                              style: GoogleFonts.roboto(
                                                  color: fontColor,
                                                  fontSize: 14),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 8.0, 8.0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "03 ",
                                          style: GoogleFonts.roboto(
                                              color: bgcolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "deliveries",
                                          style: GoogleFonts.roboto(
                                              color: bgcolor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: bgcolor,
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: Colors.red),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                  "icons/userImage.jpg",
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: bgcolor,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.red),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                      "icons/userImage2.jpg",
                                                    ),
                                                    fit: BoxFit.cover))),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 60),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: bgcolor,
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: Colors.red),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                    "icons/userImage.jpg",
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 60,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: bgcolor,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          "119 ",
                                          style: GoogleFonts.roboto(
                                              color: fontColor,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "Pending ",
                                          style: GoogleFonts.roboto(
                                              color: fontColor, fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Deliveries",
                                    style: GoogleFonts.roboto(
                                        color: fontColor, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 230,
                  decoration: BoxDecoration(
                      color: card3bgclr,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(
                        16.0,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 253, 181, 205),
                              child: SvgPicture.asset(
                                  "icons/customers-illustration-image.svg"),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: viewCustomerContainerColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Customers",
                                style: GoogleFonts.roboto(color: bgcolor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 140,
                                      decoration: BoxDecoration(
                                          color: viewCustomerContainerColor,
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                    ),
                                  ],
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: bgcolor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "1.8% ",
                                                  style: GoogleFonts.roboto(
                                                      color: fontColor,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 24),
                                                ),
                                                const Icon(
                                                  Icons.arrow_upward_outlined,
                                                  color: card3bgclr,
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            SvgPicture.asset("icons/Chart.svg"),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 16.0, 8.0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "15 ",
                                          style: GoogleFonts.roboto(
                                              color: bgcolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "New ",
                                          style: GoogleFonts.roboto(
                                              color: bgcolor),
                                        ),
                                        Text(
                                          "customers",
                                          style: GoogleFonts.roboto(
                                              color: bgcolor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: bgcolor,
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: card1bgclr),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                  "icons/userImage2.jpg",
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: bgcolor,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: card1bgclr),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                      "icons/userImage.jpg",
                                                    ),
                                                    fit: BoxFit.cover))),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 60),
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: bgcolor,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: card1bgclr),
                                                  image: const DecorationImage(
                                                      image: AssetImage(
                                                        "icons/userImage2.jpg",
                                                      ),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 1.0,
                                              ),
                                              child: Container(
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: const BoxDecoration(
                                                    color: bgcolor,
                                                    shape: BoxShape.circle),
                                                child: const Center(
                                                    child: Icon(
                                                  Icons.add,
                                                  size: 15,
                                                )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              height: 60,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: bgcolor,
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8.0, 8.0, 8.0, 0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "10 ",
                                              style: GoogleFonts.roboto(
                                                  color: fontColor,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 24),
                                            ),
                                            Text(
                                              "active ",
                                              style: GoogleFonts.roboto(
                                                  color: fontColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Customers",
                                        style: GoogleFonts.roboto(
                                            color: fontColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: bgcolor,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: card1bgclr),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                      "icons/userImage2.jpg",
                                                    ),
                                                    fit: BoxFit.cover)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 1.0, bottom: 1.0),
                                            child: Container(
                                              height: 8.0,
                                              width: 8.0,
                                              decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                  shape: BoxShape.circle),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: bgcolor,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: card1bgclr),
                                                  image: const DecorationImage(
                                                      image: AssetImage(
                                                        "icons/userImage.jpg",
                                                      ),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 1.0, bottom: 1.0),
                                              child: Container(
                                                height: 8.0,
                                                width: 8.0,
                                                decoration: const BoxDecoration(
                                                    color: Colors.green,
                                                    shape: BoxShape.circle),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50),
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: bgcolor,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: card1bgclr),
                                                  image: const DecorationImage(
                                                      image: AssetImage(
                                                        "icons/userImage2.jpg",
                                                      ),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 1.0, bottom: 1.0),
                                              child: Container(
                                                height: 8.0,
                                                width: 8.0,
                                                decoration: const BoxDecoration(
                                                    color: Colors.green,
                                                    shape: BoxShape.circle),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ]),
    );
  }
}
