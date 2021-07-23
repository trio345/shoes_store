import 'package:flutter/material.dart';
import 'package:shoes_store/utilities/constants/size_constant.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Sizes.dimen_20,
        left: Sizes.dimen_24,
        right: Sizes.dimen_24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icons/category.png',
            width: 24,
            height: 24,
          ),
          Image.asset(
            'assets/icons/notification.png',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
