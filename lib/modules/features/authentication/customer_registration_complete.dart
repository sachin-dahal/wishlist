import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/presentation/start_page.dart';

class CustomerRegistrationCompletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 15.0),
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
            SizedBox(height: Get.height * 0.08),
            Text(
              "All set! You can now find local service providers for virtually anything you are in need of. Click the button below to get started.",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: Get.height * 0.04),
            GradientRaisedButton(
              onPressed: () => Get.offAll(StartPage()),
              width: Get.width * 0.35,
              child: Center(
                child: Text(
                  "Go to Services",
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
