import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_store/presentations/themes/app_color.dart';
import 'package:shoes_store/presentations/themes/theme_text.dart';
import 'package:shoes_store/presentations/widgets/card_shoes.dart';
import 'package:shoes_store/presentations/widgets/header.dart';
import 'package:shoes_store/presentations/widgets/menu_types.dart';
import 'package:shoes_store/utilities/constants/size_constant.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: Header()),
          Expanded(
            flex: 15,
            child: Container(
              height: MediaQuery.of(context).size.height - 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: Sizes.dimen_24, top: Sizes.dimen_24),
                      child: Text(
                        'Perfect Shoes',
                        style: headlineStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: Sizes.dimen_24,
                          top: Sizes.dimen_4,
                          bottom: Sizes.dimen_24),
                      child: Text(
                        'For perfect style',
                        style: headline2Style,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: Sizes.dimen_24),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              width: MediaQuery.of(context).size.width - 112,
                              height: Sizes.dimen_48,
                              padding: EdgeInsets.only(
                                  left: Sizes.dimen_14, right: Sizes.dimen_14),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Sizes.dimen_14),
                              ),
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  icon: Image.asset('assets/icons/search.png',
                                      width: Sizes.dimen_24),
                                  hintText: 'Search for shoes',
                                  hintStyle: GoogleFonts.dmSans(
                                    fontSize: Sizes.dimen_14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: Sizes.dimen_16),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                minimumSize:
                                    Size(Sizes.dimen_48, Sizes.dimen_48),
                                backgroundColor: AppColor.orangeColor,
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      Sizes.dimen_14,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Image.asset(
                                'assets/icons/filter.png',
                                width: Sizes.dimen_24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MenuTypes(
                      selectedIndex: 0,
                    ),
                  ),
                  Expanded(flex: 10, child: CardShoes())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
