import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game_app/dashboardpages/drawer_page.dart';
import 'package:game_app/dashboardpages/home_page.dart';
import 'package:game_app/pages/alerts_navbar.dart';
import 'package:game_app/pages/home_navbar.dart';
import 'package:game_app/pages/nintendo_page.dart';
import 'package:game_app/pages/pc_page.dart';
import 'package:game_app/pages/playstation_page.dart';
import 'package:game_app/pages/search_navbar.dart';
import 'package:game_app/pages/social_navbar.dart';
import 'package:game_app/pages/wallet_navbar.dart';
import 'package:game_app/widgets/popupmenubutton.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        drawer: const Drawer(
          child: DrawerPage(),
        ),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          toolbarHeight: 120,
          backgroundColor: const Color(0XFF373A6C),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                size: 25,
                color: Colors.white,
              ),
            ),
            const GetPopupMenuButton(),
          ],
        ),
        body: Column(
          children: [
            const Gap(30),
            TabBar(
                isScrollable: true,
                dividerHeight: 0,
                controller: tabController,
                tabAlignment: TabAlignment.start,
                tabs: [
                  Tab(
                    child: Text(
                      "Home",
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "PC",
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Playstation",
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Nintendo",
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ]),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: const [
                FirstTabBarPage(),
                PCPage(),
                PlaystationPage(),
                NintendoPage()
              ],
            ))
          ],
        ),
        floatingActionButton: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchtNavBar()));
            },
            child: Icon(Icons.search, color: Colors.white, size: 36,),
            backgroundColor: const Color(0XFF373A6C),
            shape:
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 90,
          surfaceTintColor: Colors.white,
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton.filled(
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    style: IconButton.styleFrom(
                        backgroundColor: const Color(0XFF77C164)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeNavBar()));
                    },
                  ),
                  Text(
                    "Home",
                    style: GoogleFonts.poppins().copyWith(
                        color: const Color(0XFF737373),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  IconButton.filled(
                    icon: const Icon(
                      Icons.wallet,
                      color: Colors.white,
                    ),
                    style: IconButton.styleFrom(
                        backgroundColor: const Color(0XFF6F5EE2)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const WalletNavBar()));
                    },
                  ),
                  Text(
                    "Wallet",
                    style: GoogleFonts.poppins().copyWith(
                        color: const Color(0XFF737373),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(flex: 4,),
              Column(
                children: [
                  IconButton.filled(
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    style: IconButton.styleFrom(
                        backgroundColor: const Color(0XFF518CFE)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AlertsNavBar()));
                    },
                  ),
                  Text(
                    "Alerts",
                    style: GoogleFonts.poppins().copyWith(
                        color: const Color(0XFF737373),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  IconButton.filled(
                    icon: const Icon(
                      CupertinoIcons.person_2_fill,
                      color: Colors.white,
                    ),
                    style: IconButton.styleFrom(
                        backgroundColor: const Color(0XFFF56651)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SocialNavBar()));
                    },
                  ),
                  Text(
                    "Social",
                    style: GoogleFonts.poppins().copyWith(
                        color: const Color(0XFF737373),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
