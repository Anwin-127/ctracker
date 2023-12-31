import 'package:ctracker/constants/constants.dart';
import 'package:ctracker/widgets/google_text_button.dart';
import 'package:ctracker/widgets/sized_box.dart';
import 'package:ctracker/widgets/text_button.dart';
import 'package:ctracker/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(height: maxHeight,width: maxWidth,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: maxHeight,
                width: maxWidth,
                child: Image.asset(
                    "assets/ctrackerLoginBg.jpeg",
                    fit: BoxFit.fill),
              ),
              SizedBox(
                // color: Colors.white.withAlpha(200),
                height: maxHeight / 1.1,
                width: maxWidth / 1.2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addVerticalSpace(maxHeight/10),
                      Text(
                        "Welcome \nBack!",
                        style: GoogleFonts.playfairDisplay(
                            textStyle: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w900),
                            letterSpacing: 2),
                      ),
                      addVerticalSpace(maxHeight / 11),
                      CustomTextField(
                        label: "Email",
                        controller: emailController,
                        hintText: "Enter your email address",
                        labelText: "Email",
                      ),
                      addVerticalSpace(maxWidth / 10),
                      CustomTextField(
                        controller: passwordController,
                        hintText: "Enter your password",
                        labelText: "Password",
                      ),
                      addVerticalSpace(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot your password?",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: kLabelColor,
                                  color: kLabelColor,
                                  fontSize: 13,
                                  fontWeight: kLabelWeight),
                            ),
                          )
                        ],
                      ),
                      addVerticalSpace(maxHeight / 20),
                      Align(
                          alignment: Alignment.center,
                          child: CustomTextButton(
                            maxWidth: maxWidth,
                            onPressed: () {},
                          )),
                      addVerticalSpace(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "or",
                            style: GoogleFonts.poppins(
                                color: Colors.grey, fontWeight: kLabelWeight),
                          )
                        ],
                      ),
                      addVerticalSpace(10),
                      Align(
                        alignment: Alignment.center,
                        child: GoogleLogoButton(
                          onPressed: () {},
                          maxWidth: maxWidth,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
