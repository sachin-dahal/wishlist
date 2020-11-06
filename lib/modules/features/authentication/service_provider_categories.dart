import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/authentication/service_provider_background_check.dart';
import 'package:wishlist/modules/features/controllers/authentication_controllers/service_provider_categories_controller.dart';

class ServiceProviderCategoriesPage extends StatelessWidget {
  final ServiceProviderCategoriesController
      _serviceProviderCategoriesController =
      Get.put(ServiceProviderCategoriesController());

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
              "Choose one or more categories of services you would like to provide:",
              style: kNormalTextStyle1.copyWith(fontWeight: FontWeight.w600),
            ),
            GetBuilder<ServiceProviderCategoriesController>(
              builder: (_serviceProviderCategoriesController) {
                return _serviceProviderCategoriesController.checkedBox();
              },
            ),
            SizedBox(height: Get.height * 0.05),
            GradientRaisedButton(
              onPressed: () => Get.to(ServiceProviderBackgroundCheckPage()),
              width: Get.width * 0.25,
              child: Center(
                child: Text(
                  "Next",
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
            SizedBox(height: Get.height * 0.05),
          ],
        ),
      ),
    );
  }
}
