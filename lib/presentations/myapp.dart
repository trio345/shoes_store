import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_store/presentations/pages/custom_bottom_nav_bar.dart';
import 'package:shoes_store/presentations/pages/detail/detail_screen.dart';
import 'package:shoes_store/presentations/pages/home/home.dart';
import 'package:shoes_store/presentations/styles/colors.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: backgroundColor,
              width: double.infinity,
              child: PageView(children: [Home()]),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomBottomNavBar(
                  onTap: (index) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
