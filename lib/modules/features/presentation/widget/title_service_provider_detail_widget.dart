import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';

class TitleServiceProviderDetail extends StatelessWidget {
  final String text;

  TitleServiceProviderDetail({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                text,
                style: kNormalTextStyle1.copyWith(
                  fontSize: Get.width * 0.045,
                ),
              ),
              SizedBox(width: Get.width * 0.02),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: Get.width * 0.05,
                    color: Colors.yellow[600].withOpacity(0.6),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: Get.width * 0.05,
                    color: Colors.yellow[600].withOpacity(0.6),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: Get.width * 0.05,
                    color: Colors.yellow[600].withOpacity(0.6),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: Get.width * 0.05,
                    color: Colors.yellow[600].withOpacity(0.6),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.02),
          Text(
            "My name is Sachin Dahal aksdjasd asdnlka dkanda djnadl ajdnalsd My name is Sachin Dahal aksdjasd asdnlka dkanda djnadl ajdnalsd",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: Get.width * 0.035,
                color: kPrimaryTextColor2,
              ),
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
