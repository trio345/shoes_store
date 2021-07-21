import 'package:flutter/material.dart';
import 'package:shoes_store/presentations/themes/app_color.dart';
import 'package:shoes_store/utilities/constants/size_constant.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int id) onTap;
  const CustomBottomNavBar(
      {Key key, @required this.onTap, this.selectedIndex = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.dimen_50,
      width: double.infinity,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(0);
            }
          },
          child: Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color:
                        selectedIndex == 0 ? Colors.amber : Colors.transparent,
                    width: 2),
              ),
            ),
            child: Image.asset(
              'assets/icons/home.png',
              width: Sizes.dimen_30,
              color: selectedIndex == 0
                  ? AppColor.orangeColor
                  : AppColor.greyColor,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(1);
            }
          },
          child: Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color:
                        selectedIndex == 1 ? Colors.amber : Colors.transparent,
                    width: 2),
              ),
            ),
            child: Image.asset(
              'assets/icons/discount.png',
              width: Sizes.dimen_30,
              color: selectedIndex == 1
                  ? AppColor.orangeColor
                  : AppColor.greyColor,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(2);
            }
          },
          child: Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color:
                        selectedIndex == 2 ? Colors.amber : Colors.transparent,
                    width: 2),
              ),
            ),
            child: Image.asset(
              'assets/icons/buy.png',
              width: Sizes.dimen_30,
              color: selectedIndex == 2
                  ? AppColor.orangeColor
                  : AppColor.greyColor,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(3);
            }
          },
          child: Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color:
                        selectedIndex == 3 ? Colors.amber : Colors.transparent,
                    width: 2),
              ),
            ),
            child: Image.asset(
              'assets/icons/profile.png',
              width: Sizes.dimen_30,
              color: selectedIndex == 3
                  ? AppColor.orangeColor
                  : AppColor.greyColor,
            ),
          ),
        ),
      ]),
    );
  }
}
