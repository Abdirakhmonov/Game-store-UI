import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatefulWidget {
  IconData icon;
  String title;
  bool check;
  Color color;
  TextEditingController controller = TextEditingController();

  TextFieldWidget(
      {required this.controller,
      required this.title,
      required this.icon,
      required this.check,
      required this.color,
      super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.check ? widget.color : Colors.white,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 25, right: 12),
            child: Icon(widget.icon),
          ),
          prefixIconColor: widget.check ? Colors.white : Colors.black,
          hintText: widget.title,
          hintStyle: GoogleFonts.poppins().copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: widget.check ? Colors.white : Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: widget.check
                ? BorderSide.none
                : const BorderSide(
                    color: Color(0XFF9D9BAD),
                  ),
          ),
        ),
      ),
    );
  }
}
