import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/presentation/start_page.dart';

class JobSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
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
          children: [
            SizedBox(height: Get.height * 0.04),
            Center(
              child: Text(
                "Thank you for using Wishlist! You have earned 250 Wishlist points toward your next service!",
                style: kNormalTextStyle1.copyWith(
                  fontSize: Get.width * 0.05,
                  color: kPrimaryTextColor1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.03),
            Container(
              height: Get.height * 0.6,
              width: Get.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kPrimaryTextColor1,
                  width: 2.0,
                ),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () => Get.snackbar(
                    "Promo Item",
                    "Your have clicked an Item.",
                    colorText: kPrimaryTextColor1,
                    snackPosition: SnackPosition.BOTTOM,
                    duration: Duration(seconds: 2),
                    backgroundColor: kBackgroundColor1.withOpacity(0.8),
                    backgroundGradient: LinearGradient(
                      colors: <Color>[
                        kBackgroundColor1,
                        kBackgroundColor2,
                        kBackgroundColor3
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Container(
                    height: Get.height * 0.4,
                    width: Get.width * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kPrimaryTextColor1,
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/chris.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.04),
            GradientRaisedButton(
              onPressed: () => Get.offAll(StartPage()),
              width: Get.width * 0.32,
              child: Center(
                child: Text(
                  "Thanks",
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
      ),
    );
  }
}
