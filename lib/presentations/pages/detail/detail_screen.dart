import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_store/presentations/themes/app_color.dart';
import 'package:shoes_store/presentations/themes/theme_text.dart';
import 'package:shoes_store/utilities/constants/size_constant.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(
                  left: Sizes.dimen_24,
                  right: Sizes.dimen_24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icons/btn_back.png',
                        width: Sizes.dimen_40,
                      ),
                    ),
                    Text(
                      'Detail',
                      style: contentDarkBlueNormal,
                    ),
                    Image.asset(
                      'assets/icons/btn_bookmark.png',
                      width: Sizes.dimen_40,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: Sizes.dimen_24, right: Sizes.dimen_24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Men Shoe\'s',
                            style: GoogleFonts.inter(
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: Sizes.dimen_8,
                              bottom: Sizes.dimen_8,
                            ),
                            child: Text(
                              'Nike Air Jordan X',
                              style: headlineStyle.copyWith(
                                  fontSize: Sizes.dimen_20),
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/star.png',
                                width: Sizes.dimen_16,
                              ),
                              Text(
                                ' 4,9',
                                style: contentDarkBlueNormal,
                              ),
                              Text(
                                ' (130 Reviewers)',
                                style: contentDarkBlueNormal.copyWith(
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(height: Sizes.dimen_30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/images/sepatu.png',
                                  width: 250,
                                ),
                              ),
                              Container(
                                height: Sizes.dimen_150,
                                width: Sizes.dimen_50,
                                child: ListView(
                                  children: [
                                    Container(
                                      height: Sizes.dimen_45,
                                      padding: EdgeInsets.all(Sizes.dimen_4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            Sizes.dimen_10),
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Image.asset(
                                        'assets/images/sepatu.png',
                                        width: Sizes.dimen_48,
                                        height: Sizes.dimen_40,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      height: Sizes.dimen_45,
                                      padding: EdgeInsets.all(Sizes.dimen_4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            Sizes.dimen_10),
                                        border: Border.all(
                                          width: 1,
                                          color: AppColor.orangeColor,
                                        ),
                                      ),
                                      child: Image.asset(
                                        'assets/images/sepatu.png',
                                        width: Sizes.dimen_48,
                                        height: Sizes.dimen_40,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      height: Sizes.dimen_45,
                                      padding: EdgeInsets.all(Sizes.dimen_4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            Sizes.dimen_10),
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Image.asset(
                                        'assets/images/sepatu.png',
                                        width: Sizes.dimen_48,
                                        height: Sizes.dimen_40,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      height: Sizes.dimen_45,
                                      padding: EdgeInsets.all(Sizes.dimen_4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            Sizes.dimen_10),
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Image.asset(
                                        'assets/images/sepatu.png',
                                        width: Sizes.dimen_48,
                                        height: Sizes.dimen_40,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: Sizes.dimen_24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Sizes.dimen_40),
                          topRight: Radius.circular(
                            Sizes.dimen_40,
                          ),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(Sizes.dimen_24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Color',
                                  style: contentDarkBlueNormal.copyWith(
                                    fontSize: Sizes.dimen_16,
                                  ),
                                ),
                                SizedBox(width: Sizes.dimen_24),
                                Container(
                                  width: 21,
                                  height: 21,
                                  decoration: BoxDecoration(
                                    color: Color(0xff181818),
                                    borderRadius: BorderRadius.circular(
                                      50,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 21,
                                  height: 21,
                                  margin: EdgeInsets.only(
                                      left: Sizes.dimen_10,
                                      right: Sizes.dimen_10),
                                  decoration: BoxDecoration(
                                    color: Color(0xffFF7D3F),
                                    borderRadius: BorderRadius.circular(
                                      50,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 21,
                                  height: 21,
                                  decoration: BoxDecoration(
                                    color: Color(0xffEA4D49),
                                    borderRadius: BorderRadius.circular(
                                      50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: Sizes.dimen_20),
                            Text(
                              'Description',
                              style: contentDarkBlueNormal.copyWith(
                                fontSize: Sizes.dimen_16,
                              ),
                            ),
                            SizedBox(height: Sizes.dimen_10),
                            Text.rich(
                              TextSpan(
                                text:
                                    'Elegantly designed to make you look more stylish, also made from the best materials of its class as well as the technology embedded in these shoes..',
                                style: contentDarkBlueNormal.copyWith(
                                  color: Colors.grey,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' Read More',
                                    style: contentDarkBlueNormal.copyWith(
                                      color: AppColor.orangeColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: Sizes.dimen_16),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 10,
                                    child: Text(
                                      'Size',
                                      style: contentDarkBlueNormal,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'UK',
                                      style: contentDarkBlueNormal.copyWith(
                                          color: Colors.grey),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'US',
                                      style: contentDarkBlueNormal.copyWith(
                                          color: Colors.grey),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'EU',
                                      style: contentDarkBlueNormal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: Sizes.dimen_40,
                                  width: Sizes.dimen_40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      Sizes.dimen_8,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '40',
                                      style: contentDarkBlueNormal.copyWith(
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(width: Sizes.dimen_10),
                                Container(
                                  height: Sizes.dimen_40,
                                  width: Sizes.dimen_40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: AppColor.orangeColor,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      Sizes.dimen_8,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '41',
                                      style: contentDarkBlueNormal.copyWith(
                                          color: AppColor.orangeColor),
                                    ),
                                  ),
                                ),
                                SizedBox(width: Sizes.dimen_10),
                                Container(
                                  height: Sizes.dimen_40,
                                  width: Sizes.dimen_40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      Sizes.dimen_8,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '42',
                                      style: contentDarkBlueNormal.copyWith(
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(width: Sizes.dimen_10),
                                Container(
                                  height: Sizes.dimen_40,
                                  width: Sizes.dimen_40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      Sizes.dimen_8,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '43',
                                      style: contentDarkBlueNormal.copyWith(
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: Sizes.dimen_40),
                              height: 64,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      Sizes.dimen_16,
                                    ),
                                  ),
                                  primary: AppColor.orangeColor,
                                ),
                                child: Text('Add to cart'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
