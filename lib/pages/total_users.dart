import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/palette.dart';
import 'package:flutter_app2/widgets/notification_badge.dart';
import 'package:flutter_app2/widgets/user_card_detail.dart';
import 'package:flutter_app2/widgets/years_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalUsers extends StatelessWidget {
  final TextStyle appBarTitleStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 19,
      color: Colors.white,
      letterSpacing: 2);

  final TextStyle chartUsersStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.white,
      letterSpacing: 1);
  final TextStyle chartUsersStyle2 = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 10,
      color: Colors.white,
      letterSpacing: 1);
  final TextStyle dropdownStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 7,
      color: Colors.white,
      letterSpacing: 1);

  final BoxDecoration containerDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(12), color: Color(0xFF383B50));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        title: Text('Total Users', style: appBarTitleStyle),
        leading: InkWell(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.5),
            child: SvgPicture.asset('assets/images/arrow_back.svg'),
          ),
          onTap: () => Navigator.pop(context),
        ),
        actions: buildActions(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 30),
              UserCardDetail(),
              SizedBox(height: 46),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Chart Users', style: chartUsersStyle),
                      SizedBox(height: 3),
                      Text('In 2012 - 2018', style: chartUsersStyle2),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: containerDecoration,
                    child: Row(
                      children: [
                        Text('Type Chart', style: dropdownStyle),
                        SizedBox(width: 3),
                        SvgPicture.asset('assets/images/dropdown_icon.svg'),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 33),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  YearsChart(year: 2012, percent: 20, height: 161, width: 9),
                  YearsChart(year: 2013, percent: 25, height: 161, width: 9),
                  YearsChart(year: 2014, percent: 90, height: 161, width: 9),
                  YearsChart(year: 2015, percent: 50, height: 161, width: 9),
                  YearsChart(year: 2016, percent: 30, height: 161, width: 9),
                  YearsChart(year: 2017, percent: 70, height: 161, width: 9),
                  YearsChart(year: 2018, percent: 40, height: 161, width: 9),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildActions() {
    return [
      Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset('assets/images/notification_icon.svg'),
          NotificationBadge(count: 4),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(right: 29, left: 21),
        child: InkWell(
            child: SvgPicture.asset('assets/images/profile_icon.svg'),
            onTap: null),
      ),
    ];
  }
}
