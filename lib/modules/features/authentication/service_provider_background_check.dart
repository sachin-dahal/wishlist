import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/authentication/service_provider_registration_complete.dart';
import 'package:wishlist/modules/features/authentication/widget/doc_upload_icon_button_widget.dart';

class ServiceProviderBackgroundCheckPage extends StatelessWidget {
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
              SizedBox(height: Get.height * 0.04),
              Text(
                "Based upon the categories you selected, please upload the following documnets:",
                style: kNormalTextStyle1.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: Get.height * 0.05),
              DocUploadIconButton(text: "Driver's License", onPressed: () {}),
              SizedBox(height: Get.height * 0.035),
              DocUploadIconButton(text: "Medical License", onPressed: () {}),
              SizedBox(height: Get.height * 0.035),
              DocUploadIconButton(text: "Insurance License", onPressed: () {}),
              SizedBox(height: Get.height * 0.05),
              GradientRaisedButton(
                onPressed: () =>
                    Get.to(ServiceProviderRegistrationCompletePage()),
                width: Get.width * 0.25,
                child: Center(
                  child: Text(
                    "Submit",
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
          )),
    );
  }
}
