import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/dashboardpages/dashboard_page.dart';
import 'package:game_app/pages/choose_payment.dart';
import 'package:game_app/pages/create_account.dart';
import 'package:game_app/widgets/getlogo.dart';
import 'package:game_app/widgets/gettopcontainer.dart';
import 'package:game_app/widgets/textfield_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map<String, dynamic>> users = [
  {
    "email": "akrom@gmail.com",
    "password": "1234abcd",
  }
];

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void checkUserFound() {
    String email = emailController.text;
    String password = passwordController.text;

    bool chekuser = users
        .any((user) => user["email"] == email && user["password"] == password);

    if (chekuser) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SelectPayment(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [
                const Icon(
                  Icons.error,
                  color: Colors.red,
                ),
                Text(
                  "Xatolik",
                  style: GoogleFonts.poppins().copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              ],
            ),
            content: Expanded(
              child: Text(
                "Email, passwrodda xatolik bor yoki Ro'yhatdan o'tmagan",
                style: GoogleFonts.poppins().copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
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
                title: "Welcome Back",
                color: const Color(0XFF77C164),
              ),
              const Gap(45),
              GetLogo(color: const Color(0XFF77C164)),
              const Gap(35),
              Text(
                "Login Below",
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(25),
              TextFieldWidget(
                controller: emailController,
                title: "Username or Email",
                icon: Icons.person,
                check: false,
                color: const Color(0XFF77C164),
              ),
              const Gap(15),
              TextFieldWidget(
                controller: passwordController,
                title: "Enter Password",
                icon: Icons.vpn_key_rounded,
                check: true,
                color: const Color(0XFF77C164),
              ),
              const Gap(25),
              InkWell(
                onTap: () {
                  checkUserFound();
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
                    "Login",
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
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                },
                child: Text(
                  "Sign up",
                  style: GoogleFonts.poppins().copyWith(
                      color: const Color(0XFF77C164),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
