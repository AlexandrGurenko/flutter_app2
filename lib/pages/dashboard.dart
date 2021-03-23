import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/palette.dart';
import 'package:flutter_app2/widgets/notification_badge.dart';
import 'package:flutter_app2/widgets/user_card.dart';
import 'package:flutter_app2/widgets/years_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  final TextStyle appBarTitleStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 19,
      color: Colors.white,
      letterSpacing: 2);
  final TextStyle titleTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: Colors.white,
      letterSpacing: 1);
  final TextStyle subTitleTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: Colors.white,
      letterSpacing: 1);
  final TextStyle moneyTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
      fontSize: 15,
      color: Colors.white,
      letterSpacing: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      backgroundColor: primaryColor,
      appBar: AppBar(
          elevation: 0,
          brightness: Brightness.dark,
          title: Text('Dashboard', style: appBarTitleStyle),
          leading: Padding(
            padding: const EdgeInsets.only(left: 32, top: 8, bottom: 8),
            child: InkWell(
              child: SvgPicture.asset('assets/images/drawer_icon.svg'),
              onTap: () => _drawerKey.currentState.openDrawer(),
            ),
          ),
          actions: buildActions()),
      drawer: buildDrawer(context),
      body: buildBody(context),
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

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: ListTile(
          title: Text('Back to HomePage'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            SizedBox(
              height: 213,
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 31),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return UserCard(targetUsers: 2000, usersNow: 1000);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                YearsChart(year: 2012, percent: 20, height: 47, width: 3),
                YearsChart(year: 2013, percent: 25, height: 47, width: 3),
                YearsChart(year: 2014, percent: 90, height: 47, width: 3),
                YearsChart(year: 2015, percent: 50, height: 47, width: 3),
                YearsChart(year: 2016, percent: 30, height: 47, width: 3),
                YearsChart(year: 2017, percent: 70, height: 47, width: 3),
                YearsChart(year: 2018, percent: 40, height: 47, width: 3),
              ],
            ),
            SizedBox(height: 44),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Daily Sales Results', style: titleTextStyle),
                      SizedBox(height: 3),
                      Text('January 01 - 30', style: subTitleTextStyle),
                    ],
                  ),
                  Text('\$10,190', style: moneyTextStyle),
                ],
              ),
            ),
            SizedBox(height: 21),
            Stack(
              children: [
                Positioned(
                    left: 14.5,
                    top: 18,
                    child: Container(
                      width: 0.7,
                      height: 198,
                      color: Color(0xFF464965),
                    )),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return item(index + 1);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget item(int index) {
    final TextStyle monthStyle = GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.white,
        letterSpacing: 1);
    final TextStyle moneyStyle = GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 13,
        color: Colors.white,
        letterSpacing: 1);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: accentColor),
              ),
              SizedBox(width: 14),
              Text(
                'January 0$index',
                style: monthStyle,
              ),
            ],
          ),
          Text(
            '\$83,123',
            style: moneyStyle,
          )
        ],
      ),
    );
  }
}
