import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetPopupMenuButton extends StatelessWidget {
  const GetPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        padding: const EdgeInsets.only(right: 10),
        icon: Container(
          child: Image.asset(
            "assets/images/profile.png",
            height: 30,
            width: 30,
          ),
        ),
        itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 7, right: 30, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/profile.png",
                        width: 28,
                        height: 30,
                      ),
                      const Gap(10),
                      const Text("Profile")
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 7, right: 30, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/queue.png",
                        width: 28,
                        height: 30,
                      ),
                      const Gap(10),
                      const Text("My Queue")
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 7, right: 30, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/heart.png",
                        width: 28,
                        height: 30,
                      ),
                      const Gap(10),
                      const Text("Wishlist")
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 7, right: 30, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/settings.png",
                        width: 28,
                        height: 30,
                      ),
                      const Gap(10),
                      const Text("Settings")
                    ],
                  ),
                ),
              ),
            ]);
  }
}
