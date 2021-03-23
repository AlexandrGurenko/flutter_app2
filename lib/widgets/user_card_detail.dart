import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/palette.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class UserCardDetail extends StatelessWidget {
  final BoxDecoration containerDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(12), color: Color(0xFF383B50));
  final TextStyle textStyle1 = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: Colors.white,
      letterSpacing: 1);
  final TextStyle textStyle2 = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 9,
      color: Colors.white,
      letterSpacing: 1);
  final TextStyle percentStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white);
  final TextStyle percentTitleStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400, fontSize: 10, color: Colors.white);
  final TextStyle descriptionTitle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: Colors.white,
      letterSpacing: 0.5);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 19),
      decoration: containerDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Total Users Now', style: textStyle1),
          SizedBox(height: 18),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.5),
                    child: CircularPercentIndicator(
                      radius: 115,
                      lineWidth: 10,
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: accentColor,
                      backgroundColor: Color(0xFF45475C),
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: 120,
                    lineWidth: 15,
                    animation: true,
                    percent: 0.5,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: accentColor,
                    backgroundColor: Colors.transparent,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('50%', style: percentStyle),
                        Text('User', style: percentTitleStyle),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 21),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: accentColor),
                      ),
                      Text('Target 2000 Users', style: textStyle2),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: accentColor),
                      ),
                      Text('Less 1000 Users', style: textStyle2),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 19),
          Text(
              'Lorem Ipsum is simply dummy text of the print ing and type setting industry. Lorem Ipsum has been the industry\'s.',
              style: descriptionTitle)
        ],
      ),
    );
  }
}
