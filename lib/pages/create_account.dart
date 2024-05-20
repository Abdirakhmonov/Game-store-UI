import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game_app/dashboardpages/dashboard_page.dart';
import 'package:game_app/pages/choose_payment.dart';
import 'package:game_app/pages/signinscreen.dart';
import 'package:game_app/widgets/getlogo.dart';
import 'package:game_app/widgets/gettopcontainer.dart';
import 'package:game_app/widgets/textfield_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  void createNewAccount() {
    String email = _emailcontroller.text;
    String password = _passwordcontroller.text;
    String usrname = _usernamecontroller.text;

    if (usrname.isNotEmpty &&
        password.length >= 8 &&
        email.endsWith("@gmail.com")) {
      users.add({"email": _emailcontroller.text, "password": _passwordcontroller.text});

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Row(
                children: [
                  const Icon(
                    Icons.done_outline_sharp,
                    color: Colors.green,
                  ),
                  const Gap(5),
                  Expanded(
                    child: Text(
                      "Ro'yxatdan o'tdingiz",
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SelectPayment()));
                  },
                  child: Text("Kirish",
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                ),
              ],
            );
          });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                      const Gap(5),
                      Text(
                        "Xatolik mavjud!",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Text(
                      "\nExample\nUsername: yourname\nPassword: 1234abcd min 8 character\nEmail: yourname@gmail.com")
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Qaytish",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GetTopContainer(
                title: "Create Account",
                color: const Color(0XFF518CFE),
              ),
              const Gap(45),
              GetLogo(
                color: const Color(0XFF518CFE),
              ),
              const Gap(30),
              Text(
                "Signup Below",
                style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: const Color(0XFF000000),
                ),
              ),
              const Gap(25),
              TextFieldWidget(
                  controller: _usernamecontroller,
                  title: "Username or Email",
                  icon: Icons.person,
                  check: false,
                  color: Colors.white),
              const Gap(12),
              TextFieldWidget(
                  controller: _passwordcontroller,
                  title: "Enter password",
                  icon: Icons.vpn_key_rounded,
                  check: false,
                  color: Colors.white),
              const Gap(12),
              TextFieldWidget(
                controller: _emailcontroller,
                title: "Enter Email",
                icon: Icons.email,
                check: true,
                color: const Color(0XFF518CFE),
              ),
              const Gap(25),
              InkWell(
                onTap: () {
                  createNewAccount();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 59,
                  width: 141,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF9D9BAD),
                    ),
                  ),
                  child: Text(
                    "Signup",
                    style: GoogleFonts.poppins().copyWith(
                        color: const Color(0XFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Gap(25),
              Text(
                "Forgot your username or password?",
                style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: const Color(0XFF000000),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: Text(
                  "Sign in",
                  style: GoogleFonts.poppins().copyWith(
                      color: const Color(0XFF77C164),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
