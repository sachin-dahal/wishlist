import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/authentication/customer_registration.dart';
import 'package:wishlist/modules/features/authentication/service_provider_registration.dart';
import 'package:wishlist/modules/features/authentication/widget/auth_textfield_widget.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),
              Container(
                height: Get.height * 0.35,
                child: Hero(
                  tag: "wishlistImg1",
                  child: Image.asset(
                    "assets/images/logo_bg.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "Let's create a new account for you. All new accounts are customer accounts by default, and you can also register as a service provider.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14.0,
                    color: kPrimaryTextColor2,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthTextField(
                      hintText: "Email",
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 10.0),
                    AuthTextField(
                      hintText: "Password",
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 10.0),
                    AuthTextField(
                      hintText: "Confirm Password",
                      onChanged: (value) {},
                    ),
                    SizedBox(height: Get.height * 0.04),
                    GradientRaisedButton(
                      onPressed: () => Get.to(CustomerRegistrationPage()),
                      width: Get.width * 0.60,
                      child: Center(
                        child: Text(
                          "Continue as Customer",
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
                    SizedBox(height: 10.0),
                    GradientRaisedButton(
                      onPressed: () => Get.to(ServiceProviderRegistration()),
                      width: Get.width * 0.60,
                      child: Center(
                        child: Text(
                          "Continue as Service Provider",
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
              SizedBox(height: Get.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
