import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/common/widgets/gradient_raised_button_widget.dart';
import 'package:wishlist/modules/features/authentication/create_account_page.dart';
import 'package:wishlist/modules/features/authentication/widget/auth_textfield_widget.dart';
import 'package:wishlist/modules/features/presentation/start_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(Get.height);
    // print(Get.width);
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
                height: Get.height * 0.4,
                child: Hero(
                  tag: "wishlistImg1",
                  child: Image.asset(
                    "assets/images/logo_bg.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "Welcome to Wishlist. Please Login.",
                style: kNormalTextStyle1,
              ),
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
                    SizedBox(height: Get.height * 0.04),
                    GradientRaisedButton(
                      onPressed: () => Get.offAll(StartPage()),
                      width: Get.width * 0.32,
                      child: Center(
                        child: Text(
                          "LOGIN",
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
              SizedBox(height: Get.height * 0.05),
              Text(
                "New here?",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16.0,
                    color: kPrimaryTextColor1,
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.015),
              GestureDetector(
                onTap: () => Get.to(CreateAccountPage()),
                child: Text(
                  "Create New Account",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16.0,
                      color: kBackgroundColor1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
