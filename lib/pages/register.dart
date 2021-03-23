import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/palette.dart';
import 'package:flutter_app2/widgets/reg_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  final TextStyle labelStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
      fontSize: 36,
      color: accentColor,
      letterSpacing: 7,
      height: 1.1);

  final TextStyle hintTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: Colors.white,
      letterSpacing: 1);

  final BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(4), color: tfBackgroundColor);

  final TextStyle buttonTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: Colors.white,
      letterSpacing: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Label
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    SvgPicture.asset('assets/images/ellipse.svg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        'Register',
                        style: labelStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                RegTextField(
                    hintText: 'Name',
                    decoration: decoration,
                    hintTextStyle: hintTextStyle),
                RegTextField(
                    hintText: 'Email',
                    decoration: decoration,
                    hintTextStyle: hintTextStyle),
                RegTextField(
                    hintText: 'Username',
                    decoration: decoration,
                    hintTextStyle: hintTextStyle),
                RegTextField(
                    hintText: 'Password',
                    decoration: decoration,
                    hintTextStyle: hintTextStyle),
                RegTextField(
                    hintText: 'Confirm Password',
                    decoration: decoration,
                    hintTextStyle: hintTextStyle),
                SizedBox(height: 18),
                SizedBox(
                  height: 61,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'REGISTER',
                      style: buttonTextStyle,
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(accentColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
