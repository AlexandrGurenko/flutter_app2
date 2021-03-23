import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/palette.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class UserCard extends StatelessWidget {
  final int targetUsers;
  final int usersNow;

  UserCard({Key key, this.targetUsers, this.usersNow}) : super(key: key);

  final BoxDecoration containerDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(7), color: Color(0xFF383B50));
  final TextStyle percentStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w300, fontSize: 10, color: Colors.white);

  final TextStyle textStyle1 = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 13, color: Colors.white, letterSpacing: 1);
  final TextStyle textStyle2 = GoogleFonts.poppins(
      fontWeight: FontWeight.w300, fontSize: 25, color: Colors.white, letterSpacing: 1);
  final TextStyle textStyle3 = GoogleFonts.poppins(
      fontWeight: FontWeight.w300, fontSize: 10, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      margin: const EdgeInsets.all(8),
      decoration: containerDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircularPercentIndicator(
                radius: 68,
                lineWidth: 10,
                animation: true,
                percent: usersNow / targetUsers,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: accentColor,
                backgroundColor: Color(0xFF45475C),
                center: Text('${((usersNow / targetUsers) * 100).toInt()}%',
                    style: percentStyle),
              ),
              SizedBox(width: 21),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Users Now', style: textStyle1),
                  Text('$usersNow User', style: textStyle2),
                ],
              ),
            ],
          ),
          SizedBox(height: 33),
          Row(
            children: [
              Text('Target Users $targetUsers user ', style: textStyle3),
              SizedBox(width: 66),
              Text('less ${targetUsers - usersNow} user ', style: textStyle3),
            ],
          )
        ],
      ),
    );
  }
}
