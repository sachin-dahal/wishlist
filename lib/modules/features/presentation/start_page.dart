import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishlist/common/utility/colors.dart';
import 'package:wishlist/common/utility/text_styles.dart';
import 'package:wishlist/modules/features/authentication/widget/auth_textfield_widget.dart';
import 'package:wishlist/modules/features/presentation/chatbot_page.dart';

class StartPage extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.1),
              Container(
                height: Get.height * 0.4,
                child: Image.asset(
                  "assets/images/logo_bg.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: Get.height * 0.001),
              Text(
                "Say or Type your request here",
                style: kNormalTextStyle2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                children: [
                  Expanded(
                    child: AuthTextField(
                      hintText: "My air conditioner isn't working...",
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(width: 5.0),
                  ButtonTheme(
                    buttonColor: kTextFieldBackGroundColor.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minWidth: Get.width * 0.02,
                    height: Get.height * 0.068,
                    child: RaisedButton(
                      onPressed: () => Get.to(ChatBotPage()),
                      child: Text(
                        "Go",
                        style: kNormalTextStyle1.copyWith(
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.2),
              GestureDetector(
                onTap: () => Get.snackbar(
                  "Service Provider",
                  "Should be registered as Service Provider",
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
                child: Text(
                  "Go to service provider portal ➺",
                  // ➾➲➺
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
