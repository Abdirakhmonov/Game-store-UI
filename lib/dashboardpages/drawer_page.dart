import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game_app/dashboardpages/dashboard_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  splashColor: Colors.blueAccent,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(100),
            Image.asset(
              "assets/images/profile.png",
              height: 73,
              width: 70,
            ),
            Text(
              "John Doe",
              style: GoogleFonts.openSans().copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Text(
              "Premium",
              style: GoogleFonts.openSans()
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const Gap(32),
            Container(
              height: 55,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 28,
                    ),
                    hintText: "Search here",
                    hintStyle: GoogleFonts.openSans()
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
            ),
            const Gap(30),
            GetMenus(image: "profile.png", title: "Account"),
            const Gap(20),
            const Divider(),
            const Gap(20),
            GetMenus(image: "home.png", title: "Dashboard"),
            const Gap(20),
            GetMenus(image: "wallet.png", title: "My Wallet"),
            const Gap(20),
            GetMenus(image: "rentals.png", title: "Current Rentals"),
            const Gap(20),
            GetMenus(image: "cart.png", title: "Purchases"),
            const Gap(20),
            GetMenus(image: "jostik.png", title: "Games Genres"),
            const Gap(20),
            GetMenus(image: "jostik2.png", title: "Consoles"),
            const Gap(20),
            Divider(),
            const Gap(20),
            GetMenus(image: "member.png", title: "Upgrade Membership"),
            const Gap(20),
            GetMenus(image: "chiroq.png", title: "Help"),
            const Gap(20),
            GetMenus(image: "logout.png", title: "Log out"),
            Gap(50),
          ],
        ),
      ),
    );
  }
}

class GetMenus extends StatelessWidget {
  String image;
  String title;

  GetMenus({required this.image, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Row(
          children: [
            Image.asset(
              "assets/images/$image",
              height: 28,
              width: 30,
            ),
            const Gap(10),
            Text(
              title,
              style: GoogleFonts.openSans()
                  .copyWith(fontSize: 17, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
