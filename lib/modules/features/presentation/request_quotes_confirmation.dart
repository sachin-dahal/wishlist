import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/presentation/customer_notification_center_page.dart';

class RequestQuotesConfirmationPage extends StatelessWidget {
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
            Text(
              "Request Received!",
              style: kNormalTextStyle2.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: Get.height * 0.05),
            Text(
              "We are notifying all eligible HVAC contractors in your area now...",
              style: kNormalTextStyle1,
            ),
            SizedBox(height: Get.height * 0.05),
            Text(
              "As service provider responds with quotes they will show up in your notification center.",
              style: kNormalTextStyle1,
            ),
            SizedBox(height: Get.height * 0.05),
            GradientRaisedButton(
              onPressed: () => Get.to(CustomerNotificationCenterPage()),
              width: Get.width * 0.55,
              child: Center(
                child: Text(
                  "Go to Notification Center",
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
