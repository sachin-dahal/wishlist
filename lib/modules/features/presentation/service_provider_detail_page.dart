import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/presentation/request_quotes.dart';
import 'package:wishlist/modules/features/presentation/widget/title_service_provider_detail_widget.dart';

class ServiceProviderDetailPage extends StatelessWidget {
  final List<String> _titles = [
    "Title 1",
    "Title 2",
    "Title 3",
    "Title 4",
    "Title 5",
  ];

  final String text;
  final String imgUrl;
  final String imgHeroTag;

  ServiceProviderDetailPage({
    this.text,
    this.imgUrl,
    this.imgHeroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              kBackgroundColor1,
              kBackgroundColor2,
              kBackgroundColor3
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.04),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      height: Get.height * 0.2,
                      child: Hero(
                        tag: imgHeroTag,
                        child: Image(
                          image: AssetImage(imgUrl),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.025),
                    GradientRaisedButton(
                      onPressed: () => Get.to(RequestQuotesPage()),
                      width: Get.width * 0.38,
                      child: Center(
                        child: Text(
                          "Request Quote",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: 15.0,
                              color: kPrimaryTextColor1,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: Get.width * 0.025),
                    child: Text(
                      text,
                      //"My name is Sachin Dahal aksdjasd asdnlka dkanda djnadl ajdnalsd alsn dja djka aksdjasd asdnlka dkanda djnadl ajdnalsd alsn dja djka aksdjasd asdnlka dkanda djnadl ajdnalsd alsn dja djka ",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: Get.width * 0.035,
                          color: kPrimaryTextColor2,
                        ),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.04),
            Text(
              "Overall Rating",
              style: kNormalTextStyle1.copyWith(
                fontSize: Get.width * 0.04,
              ),
            ),
            SizedBox(height: Get.height * 0.015),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.solidStar,
                  size: Get.width * 0.09,
                  color: Colors.yellow[600].withOpacity(0.6),
                ),
                FaIcon(
                  FontAwesomeIcons.solidStar,
                  size: Get.width * 0.09,
                  color: Colors.yellow[600].withOpacity(0.6),
                ),
                FaIcon(
                  FontAwesomeIcons.solidStar,
                  size: Get.width * 0.09,
                  color: Colors.yellow[600].withOpacity(0.6),
                ),
                FaIcon(
                  FontAwesomeIcons.solidStar,
                  size: Get.width * 0.09,
                  color: Colors.yellow[600].withOpacity(0.6),
                ),
                FaIcon(
                  FontAwesomeIcons.starHalfAlt,
                  size: Get.width * 0.09,
                  color: Colors.yellow[600].withOpacity(0.6),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.02),
            Expanded(
                child: ListView.builder(
              itemCount: _titles.length,
              itemBuilder: (context, index) {
                return TitleServiceProviderDetail(
                  text: _titles[index],
                );
              },
            ))
            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 10.0),
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Text(
            //             "TITLE",
            //             style: kNormalTextStyle1.copyWith(
            //               fontSize: Get.width * 0.045,
            //             ),
            //           ),
            //           SizedBox(width: Get.width * 0.02),
            //           Row(
            //             children: [
            //               FaIcon(
            //                 FontAwesomeIcons.solidStar,
            //                 size: Get.width * 0.05,
            //                 color: Colors.yellow[600].withOpacity(0.6),
            //               ),
            //               FaIcon(
            //                 FontAwesomeIcons.solidStar,
            //                 size: Get.width * 0.05,
            //                 color: Colors.yellow[600].withOpacity(0.6),
            //               ),
            //               FaIcon(
            //                 FontAwesomeIcons.solidStar,
            //                 size: Get.width * 0.05,
            //                 color: Colors.yellow[600].withOpacity(0.6),
            //               ),
            //               FaIcon(
            //                 FontAwesomeIcons.solidStar,
            //                 size: Get.width * 0.05,
            //                 color: Colors.yellow[600].withOpacity(0.6),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       SizedBox(height: Get.height * 0.02),
            //       Text(
            //         "My name is Sachin Dahal aksdjasd asdnlka dkanda djnadl ajdnalsd My name is Sachin Dahal aksdjasd asdnlka dkanda djnadl ajdnalsd",
            //         style: GoogleFonts.poppins(
            //           textStyle: TextStyle(
            //             fontSize: Get.width * 0.035,
            //             color: kPrimaryTextColor2,
            //           ),
            //         ),
            //         textAlign: TextAlign.justify,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
