import 'package:flutter/material.dart';
import 'package:shoes_store/presentations/pages/detail/detail_screen.dart';
import 'package:shoes_store/presentations/themes/app_color.dart';
import 'package:shoes_store/presentations/themes/theme_text.dart';
import 'package:shoes_store/utilities/constants/size_constant.dart';

class CardShoes extends StatelessWidget {
  const CardShoes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      margin: EdgeInsets.symmetric(
          horizontal: Sizes.dimen_24, vertical: Sizes.dimen_12),
      padding: EdgeInsets.only(bottom: Sizes.dimen_50),
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
          itemCount: 6,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: Sizes.dimen_12,
            mainAxisSpacing: Sizes.dimen_12,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Sizes.dimen_16)),
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.dimen_16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/sepatu.png',
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'assets/icons/btn_bookmark.png',
                              width: Sizes.dimen_30,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: Sizes.dimen_8),
                      Text(
                        'Nike Air Jordan X',
                        style: contentDarkBlueNormal,
                      ),
                      Text(
                        '\$125.00',
                        style: contentDarkBlueNormal.copyWith(
                          color: AppColor.darkBlueColor.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
