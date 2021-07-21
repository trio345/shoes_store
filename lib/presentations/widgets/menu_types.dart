import 'package:flutter/material.dart';
import 'package:shoes_store/presentations/themes/app_color.dart';
import 'package:shoes_store/utilities/constants/size_constant.dart';

class MenuTypes extends StatelessWidget {
  final int selectedIndex;
  const MenuTypes({Key key, this.selectedIndex = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> types = ['Nike', 'Adidas', 'Puma', 'New Balance'];
    return Container(
      height: Sizes.dimen_50,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (_, index) {
          return Container(
            margin: EdgeInsets.only(left: Sizes.dimen_24, top: Sizes.dimen_24),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_8),
            decoration: BoxDecoration(
              color: (types[index] == 'Nike')
                  ? AppColor.orangeColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(Sizes.dimen_8),
            ),
            child: Text(
              types[index],
              style: TextStyle(
                fontSize: Sizes.dimen_14,
                color: (types[index] == 'Nike')
                    ? Colors.white
                    : AppColor.darkBlueColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
