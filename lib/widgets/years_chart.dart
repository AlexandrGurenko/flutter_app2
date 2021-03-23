import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_app2/constants/palette.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class YearsChart extends StatelessWidget {
  final int year;
  final int percent;
  final double height;
  final double width;

  YearsChart({Key key, this.year, this.percent, this.height, this.width}) : super(key: key);

  final TextStyle textStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 10, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(
          height: height,
          child: FAProgressBar(
            size: width,
            currentValue: percent,
            maxValue: 100,
            backgroundColor: Color(0xFF393A47),
            progressColor: accentColor,
            animatedDuration: const Duration(milliseconds: 300),
            direction: Axis.vertical,
            verticalDirection: VerticalDirection.up,
          ),
        ),
        SizedBox(height: 6),
        Text('$year', style: textStyle)
      ],
    );
  }
}
