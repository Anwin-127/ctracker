import 'package:ctracker/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  double? containerHeight;
  double? containerWidth;
  int? maxLength;
  String labelText;
  double? fontsize;
  double? labelSize;
  int? maxLines;
  String hintText;
  String? label;
  TextEditingController controller = TextEditingController();
  CustomTextField(
      {Key? key,
      required this.controller,
      this.label,
      this.maxLength,
      this.containerHeight,
      this.containerWidth,
      this.labelSize,
      required this.hintText,
      required this.labelText,
      this.maxLines,
      this.fontsize})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: widget.containerHeight,
        width: widget.containerWidth,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 2),
              child: Text(
                widget.labelText,
                style: GoogleFonts.poppins(
                    fontSize: labelSize,
                    color: labelColor,
                    fontWeight: labelWeight),
              ),
            ),
            TextFormField(
              style: TextStyle(fontSize: widget.fontsize),
              controller: widget.controller,
              maxLines: widget.maxLines,
              maxLength: widget.maxLength,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                // labelText: widget.label,
                labelStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: widget.labelSize ?? 12)),
                hintText: widget.hintText,
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.black38)),
                contentPadding:
                    const EdgeInsets.only(left: 14, bottom: 8, top: 8),
                focusedBorder:  OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color.fromARGB(255, 76, 80, 78)),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white),
                  // borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
