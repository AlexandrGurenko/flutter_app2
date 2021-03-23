import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app2/constants/palette.dart';
import 'package:flutter_app2/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
            fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: primaryColor,
        accentColor: accentColor,
        ),
        home: HomePage());
  }
}
