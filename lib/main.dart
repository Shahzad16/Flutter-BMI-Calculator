import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/bmi_page.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        textTheme: TextTheme(
            bodyLarge: GoogleFonts.poppins(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.w600),
            bodyMedium: GoogleFonts.poppins(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
            bodySmall: GoogleFonts.poppins(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
            labelSmall: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white54,
                fontWeight: FontWeight.w500)),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
        bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: kblueColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(backgroundColor: kblueColor),
        iconTheme: const IconThemeData(size: 90, color: Colors.white),
      ),
      home: const BmiPage(),
    );
  }
}
