import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/presentation/start_page.dart';

class ServiceProviderRegistrationCompletePage extends StatelessWidget {
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
            SizedBox(height: Get.height * 0.05),
            Text(
              "Thank you for registering as a service proider with Wishlist. Once your background check is complete,we will notify you via email and you may then begin responding to request from Wishlist customers.",
              style: kNormalTextStyle1.copyWith(fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: Get.height * 0.06),
            Text(
              "In the meantime, don't forget you're Wishlist customer too! Feel free to request a service now...",
              style: kNormalTextStyle1.copyWith(fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: Get.height * 0.08),
            GradientRaisedButton(
              onPressed: () => Get.offAll(StartPage()),
              width: Get.width * 0.35,
              child: Center(
                child: Text(
                  "Go to Services",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 16.0,
                      color: kPrimaryTextColor1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
