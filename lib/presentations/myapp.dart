import 'package:flutter/material.dart';
import 'package:shoes_store/presentations/pages/cart/cart_screen.dart';
import 'package:shoes_store/presentations/pages/custom_bottom_nav_bar.dart';
import 'package:shoes_store/presentations/pages/discount/discount_screen.dart';
import 'package:shoes_store/presentations/pages/home/home.dart';
import 'package:shoes_store/presentations/pages/profile/profile_screen.dart';
import 'package:shoes_store/presentations/styles/colors.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

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
              child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                  },
                  children: [
                    Home(),
                    DiscountScreen(),
                    CartScreen(),
                    ProfileScreen()
                  ]),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomBottomNavBar(
                  selectedIndex: selectedPage,
                  onTap: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                    _pageController.jumpToPage(selectedPage);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
