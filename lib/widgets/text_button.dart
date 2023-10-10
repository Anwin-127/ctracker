import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {super.key, required this.maxWidth, required this.onPressed});
  final Function onPressed;
  double maxWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: maxWidth / 1.4,
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        // ignore: sort_child_properties_last
        child: Text(
          "Login",
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
        ),
        style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(),
            backgroundColor: Colors.black),
      ),
    );
  }
}
