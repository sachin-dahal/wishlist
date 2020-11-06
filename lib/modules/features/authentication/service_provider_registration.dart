import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/authentication/service_provider_categories.dart';
import 'package:wishlist/modules/features/authentication/widget/auth_textfield_widget.dart';

class ServiceProviderRegistration extends StatelessWidget {
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.04),
              Text("Personal Info", style: kNormalTextStyle2),
              SizedBox(height: Get.height * 0.03),
              Container(
                width: Get.width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthTextField(
                      hintText: "First Name",
                      onChanged: (value) {},
                      height: 10.0,
                    ),
                    SizedBox(height: Get.height * 0.02),
                    AuthTextField(
                      hintText: "First Name",
                      onChanged: (value) {},
                      height: 10.0,
                    ),
                    SizedBox(height: Get.height * 0.02),
                    AuthTextField(
                      hintText: "Last Name",
                      onChanged: (value) {},
                      height: 10.0,
                    ),
                    SizedBox(height: Get.height * 0.02),
                    AuthTextField(
                      hintText: "Street Address",
                      onChanged: (value) {},
                      height: 10.0,
                    ),
                    SizedBox(height: Get.height * 0.02),
                    AuthTextField(
                      hintText: "City",
                      onChanged: (value) {},
                      height: 10.0,
                    ),
                    SizedBox(height: Get.height * 0.02),
                    AuthTextField(
                      hintText: "State",
                      onChanged: (value) {},
                      height: 10.0,
                    ),
                    SizedBox(height: Get.height * 0.02),
                    AuthTextField(
                      hintText: "Zip",
                      onChanged: (value) {},
                      height: 10.0,
                    ),
                    SizedBox(height: Get.height * 0.02),
                    AuthTextField(
                      hintText: "Phone",
                      onChanged: (value) {},
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              Text("Connect Payment Method", style: kNormalTextStyle1),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.solidCreditCard,
                      color: kPrimaryTextColor2,
                      size: Get.width * 0.12,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: Get.width * 0.03),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.ccPaypal,
                      color: kPrimaryTextColor2,
                      size: Get.width * 0.12,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.05),
              Text("Connect Withdrawl Method", style: kNormalTextStyle1),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.moneyBillAlt,
                      color: kPrimaryTextColor2,
                      size: Get.width * 0.12,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.05),
              GradientRaisedButton(
                onPressed: () => Get.to(ServiceProviderCategoriesPage()),
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
              SizedBox(height: Get.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
