import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_addweb_task/providers/navigate_provider.dart';
import 'package:flutter_addweb_task/screens/customers.dart';
import 'package:flutter_addweb_task/screens/khata.dart';
import 'package:flutter_addweb_task/screens/orders.dart';
import 'package:flutter_addweb_task/utils/constants.dart';
import 'package:flutter_addweb_task/widgets/horizontal_slider.dart';
import 'package:flutter_addweb_task/widgets/order_card.dart';
import 'package:flutter_addweb_task/widgets/timeline_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> navigationList = [
    const Dashboard(),
    const CustomerScreen(),
    const KhataScreen(),
    const OrderScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(
      context,
    );
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: fontColor,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            height: 70,
            shape: const CircularNotchedRectangle(),
            child: Row(
              children: [
                const Spacer(),
                Consumer<NavigationProvider>(builder: ((context, value, child) {
                  return Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            value.setDashBoard();
                          },
                          icon: Icon(
                            Icons.home_rounded,
                            color: value.currentIndex == 0
                                ? fontColor
                                : unselectedfontColor,
                          )),
                      Text(
                        "Home",
                        style: GoogleFonts.roboto(
                            color: fontColor,
                            fontWeight: value.currentIndex == 0
                                ? FontWeight.bold
                                : FontWeight.normal),
                      )
                    ],
                  );
                })),
                const Spacer(),
                Consumer<NavigationProvider>(builder: (context, value, child) {
                  return Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            value.setCustomer();
                          },
                          icon: SvgPicture.asset(
                            'icons/Group 912.svg',
                            // ignore: deprecated_member_use
                            color: value.currentIndex == 1
                                ? fontColor
                                : unselectedfontColor,
                          )),
                      Text(
                        "Customers",
                        style: GoogleFonts.roboto(
                            color: fontColor,
                            fontWeight: value.currentIndex == 1
                                ? FontWeight.bold
                                : FontWeight.normal),
                      )
                    ],
                  );
                }),
                const Spacer(),
                const Spacer(),
                Consumer<NavigationProvider>(builder: (context, value, child) {
                  return Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            value.setKhata();
                          },
                          icon: SvgPicture.asset(
                            'icons/Group 913.svg',
                            // ignore: deprecated_member_use
                            color: value.currentIndex == 2
                                ? fontColor
                                : unselectedfontColor,
                          )),
                      Text(
                        "Khata",
                        style: GoogleFonts.roboto(
                            color: fontColor,
                            fontWeight: value.currentIndex == 2
                                ? FontWeight.bold
                                : FontWeight.normal),
                      )
                    ],
                  );
                }),
                const Spacer(),
                Consumer<NavigationProvider>(builder: (context, value, child) {
                  return Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            value.setOrders();
                          },
                          // ignore: deprecated_member_use
                          icon: SvgPicture.asset(
                            'icons/Group 914.svg',
                            // ignore: deprecated_member_use
                            color: value.currentIndex == 3
                                ? fontColor
                                : unselectedfontColor,
                          )),
                      Text(
                        "Orders",
                        style: GoogleFonts.roboto(
                            color: fontColor,
                            fontWeight: value.currentIndex == 3
                                ? FontWeight.bold
                                : FontWeight.normal),
                      )
                    ],
                  );
                }),
                const Spacer(),
              ],
            )),
        body: navigationList[provider.currentIndex]);
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: bgcolor, statusBarIconBrightness: Brightness.dark),
        toolbarHeight: 50,
        backgroundColor: bgcolor,
        shadowColor: bgcolor,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("icons/Leading Icon1.svg"),
          iconSize: 32,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("icons/Group 921.svg"),
            iconSize: 32,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("icons/Trailing icon.svg"),
            iconSize: 32,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("icons/maxresdefault.png"),
            iconSize: 32,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome Mypcot !!',
                            style: GoogleFonts.roboto(
                                color: fontColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('here is your dashboard....',
                              style: GoogleFonts.roboto(
                                color: fontColor,
                                fontSize: 16,
                              )),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'icons/Group 922.svg',
                      ),
                      iconSize: 45,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const HorizontalSlider(),
                const SizedBox(height: 20),
                const TimeLineWidget(),
                const OrderCard(),
              ],
            )),
      ),
    );
  }
}
